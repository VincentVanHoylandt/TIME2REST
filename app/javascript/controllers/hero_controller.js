import { Controller } from "@hotwired/stimulus"

let position = "landing";

// Connects to data-controller="hero"
export default class extends Controller {
  static targets = ['image', 'bar', 'map']


  connect() {
    this.barTarget.classList.add('d-none');
    this.barTarget.setAttribute("id", "no-background");
    // this.barTarget.classList.add('fade-out');
    // this.barTarget.classList.add('fade-in');

    console.log("connected")
  };

  // let position = "landing";

  fixNavbar() {
    const windowHeight = window.innerHeight;
    const imageHeight = this.imageTarget.clientHeight;
    const scrollPosition = window.scrollY || window.pageYOffset;
    console.log(position)

    function fadeIn(element) {
      element.classList.remove('fade-out');
      element.classList.add('fade-in');
      // setTimeout(() => { element.style.opacity = 0 }, 500);

    }

    function fadeOut(element) {
      // element.style.opacity = 0;
      element.classList.remove('fade-in');
      element.classList.add('fade-out');
    }

    // function fade(element) {
    //   console.log("fade activated")
    //   if (element.classList.contains('fade-out')) {
    //     fadeIn(element);
    //   } else {
    //     fadeOut(element);
    //   }
    // }

    function fade(element) {
      console.log("fade activated");
      if (element.classList.contains('fade-out')) {
        fadeIn(element);
      } else {
        fadeOut(element);
      }
    }

    if (scrollPosition > (imageHeight - 90)) {
      console.log("on est en dessous")
        this.imageTarget.classList.add('fixed');
        this.mapTarget.setAttribute("id", "fixed-map");
        this.barTarget.classList.remove('d-none');
        fadeOut(this.barTarget);
    } else {
        this.imageTarget.classList.remove('fixed');
        this.mapTarget.removeAttribute("id", "fixed-map");
        fadeIn(this.barTarget);
    }
  }
}
