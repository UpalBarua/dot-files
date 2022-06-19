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
sr.reveal('.main__title, .main__img, .works__title, .my-swiper, .services__container-top, .latest__metadata', {delay: 250, origin: 'top'})






