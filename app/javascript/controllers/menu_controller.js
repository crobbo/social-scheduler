import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="menu"
export default class extends Controller {
  static targets = ["mobileDropdown", "desktopDropdown", "link"]

  static classes = ["active", "inactive"]

  initialize(){
    this.toggleMenuLinkClass(window.location.pathname)
  }

  connect() {
  }

  toggleDesktopDropdown() {
    this.desktopDropdownTarget.classList.toggle("hidden");
  }

  toggleMobileDropdown() {
    this.mobileDropdownTarget.classList.toggle("hidden");
  }

  toggleMenuLinkClass(pathname) {
    this.linkTargets.forEach((element, index) => {
      if(element.pathname == pathname) {
        element.classList.add("text-white", "bg-gray-900")
      } else{
        element.classList.add("text-gray-300")
      }
    })
  }

}
