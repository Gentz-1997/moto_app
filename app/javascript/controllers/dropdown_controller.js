import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ["button", "list"]

  toggle() {
    this.listTarget.classList.toggle("hidden")
  }

  close(event) {
    if (!this.element.contains(event.target)) {
      this.listTarget.classList.add("hidden")
    }
  }

  stopPropagation(event) {
    event.stopPropagation()
  }
}
