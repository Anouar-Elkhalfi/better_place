import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="upload"
export default class extends Controller {
  connect() {
    console.log("connected");
  }

  change(event) {
    console.log(event.currentTarget.value.split('\\'));
    this.element.querySelector('label').innerText = event.currentTarget.value.split('\\').slice(-1)
  }
}
