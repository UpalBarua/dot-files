// DOM elements.
const spacingSlider = document.querySelector('.spacing-slider');
const blurSlider = document.querySelector('.blur-slider');
const colorSelector = document.querySelector('.color-selector');

// Reading input.
spacingSlider.addEventListener('change', () => {
  document.documentElement.style.setProperty('--spacing', '20px');
});
