import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [ "field", "output" ]

  static values = {
    characterCount: Number,
  }

  connect() {
    this.change();
  }

  change() {
    let length = this.fieldTarget.value.length;
    this.outputTarget.textContent = `${280 - length}`;
    if(length > 280) {
      this.outputTarget.classList.add('text-red-600');
    } else {
      this.outputTarget.classList.remove('text-red-600');
    }
  }
};
