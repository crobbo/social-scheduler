import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="menu"
export default class extends Controller {
  static targets = ["mobileDropdown", "desktopDropdown"]
  connect() {
  }

  toggleDesktopDropdown() {
    this.desktopDropdownTarget.classList.toggle("hidden");
  }

  toggleMobileDropdown() {
    this.mobileDropdownTarget.classList.toggle("hidden");
  }
}
