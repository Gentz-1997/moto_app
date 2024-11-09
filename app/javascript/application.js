// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import { openTab } from "files/tabs";  // `files/tabs.js`をインポート
document.addEventListener("turbo:load", () => {
  window.openTab = openTab; // グローバルスコープに割り当て
});