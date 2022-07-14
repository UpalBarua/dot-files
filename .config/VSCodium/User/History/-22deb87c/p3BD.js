const menuToggle = document.querySelector('#navbar__toggle-btn');
const navbar = document.querySelector('#navbar');

menuToggle.addEventListener('click', () => {
  navbar.classList.toggle('menu-visible');
});
