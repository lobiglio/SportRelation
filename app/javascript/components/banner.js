import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#titre-js', {
    strings: [ "Au coeur de l'action", "Ecrivons une histoire commune"],
    typeSpeed: 100,
    loop: false,
    startDelay: 30,
    showCursor: false,
  });
}

export { loadDynamicBannerText };
