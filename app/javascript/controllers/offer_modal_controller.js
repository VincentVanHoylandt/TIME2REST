import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="offer-modal"
export default class extends Controller {
  static targets = ['index']
  connect() {
  }

  show() {
    event.preventDefault()
    this.indexTarget.classList.remove('d-none')
  }

  dont_show() {
    event.preventDefault()
    this.indexTarget.classList.add('d-none')
  }

}
