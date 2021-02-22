import Typed from 'typed.js';

if (#banner-typed-text){
  const loadDynamicBannerText = () => {
    new Typed('#banner-typed-text', {
      strings: ["A drink for every occasion"],
      typeSpeed: 75,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
