import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {

  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;


    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    console.log("connected en cris")
    console.log(this.markersValue)
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    });

    const bounds = new mapboxgl.LngLatBounds();
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });

  };

  scrollelement() {

      console.log(event.currentTarget.dataset)

      const map = document.getElementById(event.currentTarget.dataset.id);

      // Vérifier si l'élément avec l'ID spécifié existe
      if (!map) {
        console.error(`L'élément avec l'ID '${id}' n'existe pas`);
        return;
      }

      // Obtenir la position de l'élément sur la page
      const rect = map.getBoundingClientRect();

      // Calculer la position de défilement pour centrer la carte sur l'écran
      const scrollY = window.scrollY || window.pageYOffset;
      const centerY = rect.top + scrollY - (window.innerHeight / 2) + (rect.height / 2);

      // Faire défiler la page jusqu'à la position calculée
      window.scrollTo({
        top: centerY,
        behavior: 'smooth'
      });


  };

}
