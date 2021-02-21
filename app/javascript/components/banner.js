import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["A drink for every occasion"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
