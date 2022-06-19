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
  distance: '40px',
  duration: '1600'
})

// ScrollReveal({ reset: true });
sr.reveal('.main__title, .main__img, .works__title, .my-swiper, .services__container-top, .latest__metadata, .contact__title', {delay: 250, origin: 'top'})
sr.reveal('.services__img, .about__content, .latest__card', {delay: 250, origin: 'left'})
sr.reveal('.services__card, .about__images', {delay: 250, origin: 'right'})
sr.reveal('.footer', {delay: 250, origin: 'bottom'})






