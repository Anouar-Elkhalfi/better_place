import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="formtoggle"
export default class extends Controller {
  static targets = ["page1", "page2", "form"];

  connect() {
    this.showPage(1);
  }
  showPage(page){
    this.page1Target.style.display = page === 1 ? "block" : "none";
    this.page2Target.style.display = page === 2 ? "block" : "none";
  }

  nextPage(){
    this.showPage(2);
  }
  submitForm(){
    this.formTarget.submit();
  }
}
