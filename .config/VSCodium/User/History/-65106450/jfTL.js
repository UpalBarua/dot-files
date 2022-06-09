// const Swiper = requires('https://unpkg.com/swiper@8/swiper-bundle.esm.browser.min.js');

// Navbar
const navbarMenu = document.querySelector('#navbar__menu-center');
const navbarToggle = document.querySelector('#navbar__menu-toggle');

navbarToggle.addEventListener('click', () => {
  navbarMenu.classList.toggle('visible');
});

const swiper = new Swiper('.swiper', {
  // Optional parameters
  direction: 'horizontal',
  loop: false,
  slidesPerView: 3,
  spaceBetween: 20,

  // If we need pagination
  pagination: {
    el: '.swiper-pagination',
    clickable: true,
  },

  // Navigation arrows
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
});
