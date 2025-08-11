let userBtn = document.querySelector('#user-btn');
let profile = document.querySelector('.header .profile');

let searchBtn = document.querySelector('#search-btn');
let sideBar = document.querySelector('.side-bar');

userBtn.onclick = () => {
    profile.classList.toggle('active');
    sideBar.classList.remove('active');
};

searchBtn.onclick = () => {
    sideBar.classList.toggle('active');
    profile.classList.remove('active');

    // Toggle body padding for small screens
    document.body.classList.toggle('sidebar-active');
};

window.onscroll = () => {
    profile.classList.remove('active');
};
