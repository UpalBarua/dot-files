const slides = document.querySelectorAll('.slide');

slides.forEach(slide => {
  slide.addEventListener('click', () => {
    slide.classList.toggle('active');
  })

  slide.addEventListener('transitionend', e => {
    if (e.propertyName.includes('flex-grow')) slide.classList.toggle('open-active')
  })
})

