const slides = document.querySelectorAll('.slide');

slides.forEach(slide => {
  slide.addEventListener('click', () => {
    slide.classList.toggle('active');
  })

  slide.addEventListener('transitionend', e => {
    console.log(e.propertyName);
  })
})

