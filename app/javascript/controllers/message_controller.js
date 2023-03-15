import { Controller, fetch } from "@hotwired/stimulus"

// Connects to data-controller="message"
export default class extends Controller {
  static targets = ['message','card']
  connect() {
    console.log('hello')
  }
  switch_chatroom () {

    this.cardTargets.forEach(card => {
      card.classList.remove('activated')
    });

    event.currentTarget.classList.add('activated')

    this.messageTargets.forEach(element => {

      if (element.dataset.chatroomSubscriptionChatroomIdValue == event.currentTarget.dataset.id) {
        let params = new URL(window.location.href);
        params.searchParams.set('id', event.currentTarget.dataset.chatroomId)
        window.history.replaceState(null, null, params)
        element.classList.remove('d-none')
      }
      else {
        element.classList.add('d-none')
      }
    });
  }


}
