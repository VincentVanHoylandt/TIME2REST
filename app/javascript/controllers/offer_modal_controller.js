import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="offer-modal"
export default class extends Controller {
  static targets = ['index', 'content']
  connect() {
  }

  show() {
    event.preventDefault();
    this.indexTarget.classList.remove('d-none');
  }

  dont_show() {

  event.preventDefault();
  this.contentTarget.classList.add('right-shift');
  console.log('avant la fonction');
  this.contentTarget.addEventListener('animationend', () => {
    this.indexTarget.classList.add('d-none');
  }, { once: true });

  this.contentTarget.addEventListener('animationend', () => {
    this.contentTarget.classList.remove('right-shift');
  }, { once: true });
  }

}
