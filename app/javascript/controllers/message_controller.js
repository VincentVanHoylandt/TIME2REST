import { Controller, fetch } from "@hotwired/stimulus"

// Connects to data-controller="message"
export default class extends Controller {
  static targets = ['message']
  connect() {
    console.log('hello')
  }
  switch_chatroom () {
    this.messageTarget.classList.remove('d-none')
  }


}
