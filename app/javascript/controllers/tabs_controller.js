import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"
export default class extends Controller {
  static targets = ["tab", "content"]

  connect() {
    this.showTab(0); // デフォルトで最初のタブを表示
  }
  showTab(index) {
    this.tabTargets.forEach((tab, i) => {
      tab.classList.toggle("active", i === index); // 選択されたタブにのみクラスを適用
    });

    this.contentTargets.forEach((content, i) => {
      content.classList.toggle("hidden", i !== index); // 他のコンテンツを非表示
    });
  }

  selectTab(event) {
    event.preventDefault();
    const index = this.tabTargets.indexOf(event.currentTarget);
    this.showTab(index);
  }
}
