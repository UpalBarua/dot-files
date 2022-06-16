// Navbar toggle.
const navMenuToggle = document.querySelector('#navbar__menu-toggle');

navMenuToggle.addEventListener('click', () => {
  const navbarMenu = document.querySelector('#navbar__menu');
  navbarMenu.classList.toggle('.active');
  // console.log(navbarMenu.classList);
});