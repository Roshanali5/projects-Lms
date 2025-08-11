use GuzzleHttp\Client;
use Illuminate\Http\Request;

public function generateQuestions(Request $request)
{
    $apiKey = env('OPENAI_API_KEY'); // Get API key from .env
    if (!$apiKey) {
        return response()->json(['error' => 'API Key is missing.'], 400);
    }

    // Validate input data
    $course_id = $request->query('course_id');
    $level = $request->query('level');
    
    if (!$course_id || !$level) {
        return response()->json(['error' => 'Missing course_id or level.'], 400);
    }

    // Generate prompt based on course and level
    $prompt = "Generate assignment questions for a {$level} level course on {$course_id}";
    $client = new Client();

    try {
        // Send request to OpenAI API
        $response = $client->post('https://api.openai.com/v1/chat/completions', [
            'headers' => [
                'Authorization' => "Bearer {$apiKey}",
                'Content-Type' => 'application/json',
            ],
            'json' => [
                'model' => 'gpt-3.5-turbo',
                'messages' => [
                    ['role' => 'system', 'content' => 'You are a helpful assistant.'],
                    ['role' => 'user', 'content' => $prompt]
                ],
                'max_tokens' => 150,
            ],
        ]);

        // Check if the request was successful
        if ($response->getStatusCode() !== 200) {
            return response()->json(['error' => 'Failed to generate questions'], 500);
        }

        // Parse response body
        $body = $response->getBody();
        $data = json_decode($body, true);

        // Check if 'choices' exist in the response
        if (isset($data['choices']) && count($data['choices']) > 0) {
            return response()->json(['questions' => $data['choices'][0]['message']['content']]);
        } else {
            return response()->json(['error' => 'No questions generated'], 500);
        }
    } catch (\Exception $e) {
        // Catch and handle any errors during the request
        return response()->json(['error' => 'Error generating questions: ' . $e->getMessage()], 500);
    }
}
