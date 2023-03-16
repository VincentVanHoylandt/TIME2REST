import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"
// Connects to data-controller="chatroom-subscription"
export default class extends Controller {

  static values = { chatroomId: Number, currentUserId: Number }
  static targets = ["messages","send"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => {
        this.#insertMessageAndScrollDown(data)
      } }
    )
    console.log(`Subscribe to the chatroom with the id ${this.chatroomIdValue}.`)
  }
  resetForm(event) {
    event.target.reset()
  }

  #insertMessageAndScrollDown(data) {
    // Logic to know if the sender is the current_user
    const currentUserIsSender = this.currentUserIdValue === data.sender_id
    // [...]
    // Creating the whole message from the `data.message` String
    console.log(data.content)
    const messageElement = this.#buildMessageElement(currentUserIsSender, data.content)
    // Inserting the `message` in the DOM
    this.messagesTarget.insertAdjacentHTML("beforeend", messageElement)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  #buildMessageElement(currentUserIsSender, message) {
    return `
      <div class="${this.#justifyClass(currentUserIsSender)}">
        <div class="my-msg-lc">
        </div>
        <div class="my-msg-rc" >
          <p><strong>You :</strong></p>
          <p> ${message} </p>
        </div>

        </div>
      </div>
    `

  }

  #justifyClass(currentUserIsSender) {
    return currentUserIsSender ? "my-msg-container right" : "my-msg-container"
  }

  #userStyleClass(currentUserIsSender) {
    return currentUserIsSender ? "sender-style" : "receiver-style"
  }
}
