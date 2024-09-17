'use strict';

export default function setupHamburgerMenu() {
  const open = document.querySelector('#open');
  const overlay = document.querySelector('#overlay');
  const close = document.querySelector('#close');

  if (open && overlay && close) {
    open.addEventListener('click', () => {
      overlay.classList.remove('opacity-0');
      open.classList.add('hidden');
    });

    close.addEventListener('click', () => {
      overlay.classList.add('opacity-0');
      open.classList.remove('hidden');
    });
  }
}