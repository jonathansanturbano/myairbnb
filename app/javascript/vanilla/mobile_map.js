function mobileMap() {
  const mapOpener = document.querySelector('#map-opener')
  const mapBox = document.querySelector('.map-box')
  mapOpener.addEventListener('click', () => {
    mapBox.classList.toggle('visible');
  })
}

export { mobileMap };
