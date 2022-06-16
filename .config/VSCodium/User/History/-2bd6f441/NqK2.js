// Navbar toggle.
const navMenuToggle = document.querySelector('#navbar__menu-toggle');

navMenuToggle.addEventListener('click', () => {
  const navbarMenu = document.querySelector('#navbar__menu');
  navbarMenu.classList.toggle('active');
});

window.addEventListener('click', (e) => {
 e.target.classList.contains('navbar__list-link') ? navMenu.classList.remove('active') : null;
});