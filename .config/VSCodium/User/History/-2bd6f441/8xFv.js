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
    stretch: 0,
    depth: 100,
    modifier: 1,
    slideShadows: true,
  },
  pagination: {
    el: ".swiper-pagination",
  },
});

// SCROLLREVEAL
const sr = ScrollReveal({
  distance: '60px',
  duration: '1400'
})

// ScrollReveal({ reset: true });
sr.reveal('.main__title, .works__title', {delay: 250, origin: 'top'});
sr.reveal('.main__img, .my-swiper', {delay: 700, distance: '10%', origin: 'top'});
sr.reveal('.services__container-top', {delay: 200, distance: '10%', origin: 'top'});

// services
sr.reveal('.services__img', {delay: 500, distance: '10%', origin: 'left'});
sr.reveal('.services__cards-container', {delay: 500, distance: '10%', origin: 'right'});

// about
sr.reveal('.about__title', {delay: 500, distance: '10%', origin: 'top'});
sr.reveal('.about__text, .about__btn', {delay: 500, distance: '10%', origin: 'left'});
sr.reveal('.about__images', {delay: 500, distance: '10%', origin: 'right'});

// latest
sr.reveal('.about__title', {delay: 500, distance: '10%', origin: 'top'});

// contact
sr.reveal('.contact__container', {delay: 500, distance: '10%', origin: 'right'});

// footer
sr.reveal('.footer', {delay: 500, distance: '10%', origin: 'bottom'});






