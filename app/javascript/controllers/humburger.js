'use-strict';

{
  const open = document.querySelector('#open');
  const overlay = document.querySelector('#overlay');
  const close = document.querySelector('#close')

  open.addEventListener('click', () => {
    overlay.classList.remove('opacity-0');
  });

  close.addEventListener('click', () => {
    overlay.classList.add('opacity-0');
  });
}

// 'use strict';

// {
//   const open = document.querySelector('#open');
//   const overley = document.querySelector('.overlay');
//   const close = document.querySelector('#close');

//   open.addEventListener('click', () => {
//     overley.classList.add('show');
//     open.classList.add('hide')
//   });

//   close.addEventListener('click', () => {
//     overley.classList.remove('show');
//     open.classList.remove('hide');
//   });
// }