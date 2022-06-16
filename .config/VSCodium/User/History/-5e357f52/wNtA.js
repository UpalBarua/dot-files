// DOM elements.
const spacingSlider = document.querySelector('.spacing-slider');
const blurSlider = document.querySelector('.blur-slider');
const colorSelector = document.querySelector('.color-selector');

// Reading input.
spacingSlider.addEventListener('change', () => {
  document.documentElement.style.spacing = '20px';
  console.log(document.documentElement)
  // document.style.spacing = '20px';
});
