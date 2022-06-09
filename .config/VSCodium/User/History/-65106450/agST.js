// Navbar
const navbarMenu = document.querySelector('#navbar__menu-center');
const navbarToggle = document.querySelector('#navbar__menu-toggle');

navbarToggle.addEventListener('click', () => {
  navbarMenu.classList.toggle('visible');
});

console.log('hello world');
