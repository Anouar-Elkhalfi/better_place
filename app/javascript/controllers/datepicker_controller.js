import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";


// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = ["startDate"]
  connect() {
    flatpickr (this.startDateTarget, {
      enableTime: true,
      dateFormat: "Y-m-d",
    })
  }
}
