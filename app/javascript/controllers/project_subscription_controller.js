import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { projectId: Number, currentUserId: Number }
  static targets = ["messages"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ProjectChannel", id: this.projectIdValue },
      { received: data => {
        this.#insertMessageAndScrollDown(data.html);
        if (this.currentUserIdValue != data.author_id) {
          const messages = this.messagesTarget.querySelectorAll('.message-row');
          const lastMessage = messages[messages.length - 1];
          lastMessage.classList.remove('current-user-is-author')
        }
      }}
    )
    console.log(`Subscribe to the project with the id ${this.projectIdValue}.`)
  }
  #insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }
  empty(event) {
    const form = event.currentTarget;
    setTimeout(() => {
      form.reset()
    }, 10);
  }
}
