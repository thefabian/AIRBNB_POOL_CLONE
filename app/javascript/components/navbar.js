import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["book a pool.", "have fun with your friends.", "waste money that efficiently."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
