const slides = document.querySelectorAll('.slide');

slides.forEach(slide => {
  slide.addEventListener('click', () => {
    slide.classList.toggle('active');
  })
})