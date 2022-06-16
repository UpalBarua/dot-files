// DOM elements.
const spacingSlider = document.querySelector('.spacing-slider');
const blurSlider = document.querySelector('.blur-slider');
const colorSelector = document.querySelector('.color-selector');

// Reading input.
spacingSlider.addEventListener('change', () => {
  const value = `${spacingSlider.value}px`;
  document.documentElement.style.setProperty('--spacing', value);
});

blurSlider.addEventListener('change', () => {
  const value = `${blurSlider.value}px`;
  document.documentElement.style.setProperty('--blur', value);
});

  colorSelector.addEventListener('change', () => {
  const value = colorSelector.value;
  document.documentElement.style.setProperty('--clr-acnt', value);
});