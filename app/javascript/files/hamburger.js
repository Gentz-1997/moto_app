'use strict';

export default function setupHamburgerMenu() {
  const open = document.querySelector('#open');
  const overlay = document.querySelector('#overlay');
  const close = document.querySelector('#close');

  if (open && overlay && close) {
    open.addEventListener('click', () => {
      overlay.classList.remove('hidden');
      open.classList.add('hidden');
    });

    close.addEventListener('click', () => {
      overlay.classList.add('hidden');
      open.classList.remove('hidden');
    });
  }
}

// Turboのページ遷移後にセットアップを実行
document.addEventListener('turbo:load', () => {
  setupHamburgerMenu();
});