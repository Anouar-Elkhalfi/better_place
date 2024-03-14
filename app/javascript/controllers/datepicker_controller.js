import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";


export default class extends Controller {
  static targets = ["startDate"];
  connect() {
    flatpickr(this.startDateTarget, {
      enableTime: false,
      dateFormat: "Y-m-d",
    });
  }
}
