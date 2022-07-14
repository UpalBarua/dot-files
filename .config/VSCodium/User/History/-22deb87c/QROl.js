const menuToggle = document.querySelector('#navbar__toggle-btn');
const navbar = document.querySelector('#navbar');
const navbarInput = document.querySelector('#navbar__form-input');

menuToggle.addEventListener('click', () => {
  navbar.classList.toggle('menu-visible');
});
