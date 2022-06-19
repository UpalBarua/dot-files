const slides = document.querySelectorAll('.slide');

slides.forEach(slide => {
  slide.addEventListener('click', () => {
    console.log('yay');
  })
})