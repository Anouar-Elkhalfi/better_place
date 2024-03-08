import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="formtoggle"
export default class extends Controller {
  static targets = ["page1", "page2", "form"];

  connect() {
    this.showPage(1);
  }
  showPage(page){
    if (page === 1) {
      this.page1Target.classList.remove('d-none')
    } else {
      this.page1Target.classList.add('d-none')
    }
    if (page === 2) {
      this.page2Target.classList.remove('d-none')
    } else {
      this.page2Target.classList.add('d-none')
    } 
  }

  nextPage(){
    this.showPage(2);
  }
  submitForm(){
    this.formTarget.submit();
  }
}
