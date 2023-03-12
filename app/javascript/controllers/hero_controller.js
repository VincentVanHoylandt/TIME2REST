import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hero"
export default class extends Controller {
  static targets = ['image']
  connect() {
  }

  fixNavbar() {
    const windowHeight = window.innerHeight;
    const imageHeight = this.imageTarget.clientHeight;
    const scrollPosition = window.scrollY || window.pageYOffset;

    if (scrollPosition > (imageHeight - 90)) {
      this.imageTarget.classList.add('fixed');
      // this.navbarTarget.classList.remove('diplay_none')
    } else {
      this.imageTarget.classList.remove('fixed');
      // this.navbarTarget.classList.add('diplay_none')
    }
  }


}
