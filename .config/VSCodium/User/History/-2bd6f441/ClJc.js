// Navbar toggle.
const navbar = document.querySelector('.navbar')
const navMenuToggle = document.querySelector('#navbar__menu-toggle');
const navbarMenu = document.querySelector('#navbar__menu');

navMenuToggle.addEventListener('click', () => {
  navbarMenu.classList.toggle('active');
});

window.addEventListener('click', (e) => {
 if (e.target.classList.contains('navbar__list-link')) {
  navbarMenu.classList.remove('active') 
 };
});

window.addEventListener('scroll', () => {
  const header = document.querySelector('header');
  if (window.scrollY >= 30) {
    header.classList.add('scroll-shadow');
  } else {
    header.classList.remove('scroll-shadow');
  }
})

// SWIPER
const mySwiper = new Swiper('.my-swiper', {
  effect: "coverflow",
  grabCursor: true,
  centeredSlides: true,
  slidesPerView: "auto",
  coverflowEffect: {
    rotate: 50,
    stretch: 10,
    depth: 200,
    modifier: 1,
    slideShadows: true,
  },
  pagination: {
    el: ".swiper-pagination",
  },
});

// SCROLLREVEAL
ScrollReveal({ reset: true });
ScrollReveal().reveal('.main__title, .works__title', {delay: 500, distance: '10%', origin: 'top', duration: '900'});
ScrollReveal().reveal('.main__img, .my-swiper', {delay: 700, distance: '10%', origin: 'top'});
ScrollReveal().reveal('.services__container-top', {delay: 200, distance: '10%', origin: 'top'});
ScrollReveal().reveal('.services__img', {delay: 300, distance: '10%', origin: 'left'});
