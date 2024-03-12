import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="range"
export default class extends Controller {
  static targets = [ "span1", "span2", "span3" ]
  connect() {
    console.log("test")
  }
  update(event) {
    const value = event.currentTarget.value;
    const id = event.currentTarget.dataset.value;
    if (id === "1") {
      this.span1Target.innerText = value
    } else if (id === "2") {
      this.span2Target.innerText = value
    } else if (id === "3") {
      this.span3Target.innerText = value
    }
  }
}
