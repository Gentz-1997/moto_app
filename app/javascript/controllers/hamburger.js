// 'use-strict';

// {
//   const open = document.querySelector('#open');
//   const overlay = document.querySelector('#overlay');
//   const close = document.querySelector('#close')

//   open.addEventListener('click', () => {
//     overlay.classList.remove('opacity-0');
//   });

//   close.addEventListener('click', () => {
//     overlay.classList.add('opacity-0');
//   });
// }

'use strict';

export default function setupHamburgerMenu() {
  const open = document.querySelector('#open');
  const overlay = document.querySelector('#overlay');
  const close = document.querySelector('#close');

  if (open && overlay && close) {
    open.addEventListener('click', () => {
      overlay.classList.remove('opacity-0');
    });

    close.addEventListener('click', () => {
      overlay.classList.add('opacity-0');
    });
  }
}