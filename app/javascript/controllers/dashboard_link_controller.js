import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dashboard-link"
export default class extends Controller {
  static targets = ["link","edit","offer","message","apply"]

  connect() {
  }

  switch_page () {
    this.linkTargets.forEach(element => {
      element.classList.remove('active')
    });
    event.currentTarget.classList.add('active');


    // if (event.currentTarget.innerText == 'Editer mon offre') {
    //   this.editTarget.classList.remove('d-none')

    // }


    switch (event.currentTarget.dataset.id) {
      case "edit":
        this.editTarget.classList.remove('d-none')
        this.offerTarget.classList.add('d-none')
        this.messageTarget.classList.add('d-none')
        this.applyTarget.classList.add('d-none')
        break;
      case "offre":
        this.offerTarget.classList.remove('d-none')
        this.editTarget.classList.add('d-none')
        this.messageTarget.classList.add('d-none')
        this.applyTarget.classList.add('d-none')
        break;
      case "message":
        this.messageTarget.classList.remove('d-none')
        this.offerTarget.classList.add('d-none')
        this.editTarget.classList.add('d-none')
        this.applyTarget.classList.add('d-none')
        console.log('1')
        break;
      case "canditature":
        this.applyTarget.classList.remove('d-none')
        this.offerTarget.classList.add('d-none')
        this.messageTarget.classList.add('d-none')
        this.editTarget.classList.add('d-none')
        break;
      default:
        break;
    }
  }
}
