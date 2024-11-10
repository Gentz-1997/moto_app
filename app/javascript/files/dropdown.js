'use strict';
export default function setupDropDownList() {
  const dropdownbutton = document.querySelector('#dropdownbutton');
  const dropdownlist = document.querySelector('#dropdownlist');
  
  if (dropdownbutton && dropdownlist) {
    // ボタンをクリックしたときにリストを表示/非表示に切り替える
    dropdownbutton.addEventListener('click', (event) => {
      event.stopPropagation(); // イベントのバブリングを防止
      dropdownlist.classList.toggle('hidden');
    });

    // 他の部分をクリックしたときにリストを閉じる
    document.addEventListener('click', (event) => {
      if (!dropdownlist.classList.contains('hidden')) {
        dropdownlist.classList.add('hidden');
      }
    });

    // ドロップダウン内をクリックしたときはリストを閉じない
    dropdownlist.addEventListener('click', (event) => {
      event.stopPropagation(); // イベントのバブリングを防止
    });
  }
}
// Turboのページ遷移後にセットアップを実行
document.addEventListener('turbo:load', () => {
  setupDropDownList();
});