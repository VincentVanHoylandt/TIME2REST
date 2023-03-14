import { Controller } from "@hotwired/stimulus"

let position = "landing";

// Connects to data-controller="hero"
export default class extends Controller {
  static targets = ['image', 'bar', 'map']


  connect() {
    this.barTarget.classList.add('d-none');
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
      setTimeout(() => { element.style.opacity = 0 }, 500);

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
      if (position === "landing") {
      this.imageTarget.classList.add('fixed');
      // this.mapTarget.classList.add('fixed-map');
      this.mapTarget.setAttribute("id", "fixed-map");
      this.barTarget.classList.remove('d-none');
      fade(this.barTarget);
      }
      position = "list";
    }
    else {
      if (position === "list") {
        this.imageTarget.classList.remove('fixed');
        // this.mapTarget.classList.remove('fixed-map');
        this.mapTarget.removeAttribute("id", "fixed-map");
        fade(this.barTarget);
        setTimeout(() => { this.barTarget.classList.add('d-none') }, 550);
      }
      position = 'landing';
    }
  }
}
