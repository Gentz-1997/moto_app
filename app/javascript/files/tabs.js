export function openTab(tabId) {
  const tabs = document.querySelectorAll('[data-tab-content]');
  tabs.forEach(tab => tab.classList.add('hidden'));

  const targetTab = document.getElementById(tabId);
  if (targetTab) targetTab.classList.remove('hidden');
}

window.openTab = openTab;