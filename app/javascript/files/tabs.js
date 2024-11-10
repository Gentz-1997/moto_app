'use strict';
export default function setupTabs() {
  function openTab(tabId) {
    const tabs = document.querySelectorAll('[data-tab-content]');
    tabs.forEach(tab => tab.classList.add('hidden'));

    const targetTab = document.getElementById(tabId);
    if (targetTab) targetTab.classList.remove('hidden');
  }

  document.querySelectorAll('[data-tab-target]').forEach(button => {
    button.addEventListener('click', () => {
      const tabId = button.getAttribute('data-tab-target');
      openTab(tabId);
    });
  });

  // Turboのページ遷移後に初期タブを設定
  document.addEventListener('turbo:load', () => {
    openTab('spots');
    setupTabs();
  });
}