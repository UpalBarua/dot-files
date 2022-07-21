const menuToggle = document.querySelector('#navbar__toggle-btn');
const navbar = document.querySelector('#navbar');

menuToggle.addEventListener('click', () => {
  navbar.classList.toggle('menu-visible');
  if (navbar.classList.contains('menu-visible')) {
    navbar.style.maxHeight = navbar.scrollHeight + 'px';
  } else {
    navbar.style.maxHeight = '8rem';
  }
});
