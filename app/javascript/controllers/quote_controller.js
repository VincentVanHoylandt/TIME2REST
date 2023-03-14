import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="quote"
export default class extends Controller {
  static values = {
    quote: Array
  }
  static targets = ["outputQuotes"]
  connect() {
    const interval = setInterval(this.generateQuote, 12000);
  }


  generateQuote() {

    const outputQuotes = document.querySelector("#outputQuotes")
    const quoteValue =
    [
      "Utilisez des mots clés pertinents pour faciliter la recherche par des candidats qualifiés.",
      "Utilisez un langage clair et concis pour décrire les responsabilités et les exigences du poste.",
      "Faites en sorte que votre annonce d'emploi se distingue des autres avec un titre accrocheur.",
      "Soyez transparent sur la rémunération et les avantages pour éviter les malentendus futurs.",
      "Lorsque vous rédigez une annonce de proposition d'emploi, soyez clair sur les compétences et les qualifications nécessaires pour le poste.",
      "Utilisez un langage simple et compréhensible pour éviter toute confusion dans l'esprit des candidats potentiels.",
      "Mettez en avant les avantages offerts par le poste.",
      "Utilisez des exemples concrets pour illustrer les responsabilités et les exigences du poste.",
      "Utilisez des termes positifs pour décrire l'environnement de travail, comme 'collaboratif', 'motivant' ou 'stimulant'.",
      "Assurez-vous que l'annonce est cohérente avec la culture et les valeurs de votre entreprise.",
      "Évitez d'utiliser des jargons ou des acronymes qui ne sont pas largement connus.",
      "Soyez transparent sur la rémunération et les avantages sociaux associés au poste.",
      "Utilisez des phrases courtes et directes pour maximiser l'impact de votre annonce.",
      "Incluez des informations sur les exigences physiques du poste, le cas échéant.",
      "Mettez l'accent sur les compétences transférables qui peuvent être acquises par les candidats, plutôt que sur les qualifications rigides.",
      "Utilisez des verbes d'action pour décrire les responsabilités du poste, tels que 'diriger', 'développer' ou 'analyser'.",
      "Évitez les stéréotypes de genre ou de race dans la formulation de votre annonce.",
      "Utilisez des témoignages de collaborateurs actuels ou passés pour donner un aperçu de la culture de l'entreprise.",
      "Donnez des informations sur la progression de carrière possible pour les candidats.",
      "Utilisez des exemples de projets précédents pour donner une idée de ce que le candidat peut accomplir dans le poste.",
      "Incluez des informations sur l'impact potentiel que le poste peut avoir sur l'entreprise.",
      "Mettez l'accent sur les compétences sociales et de communication nécessaires pour réussir dans le poste.",
      "Faites relire l'annonce par un tiers pour éviter les erreurs de grammaire ou d'orthographe.",
    ]
    const randomQuote = quoteValue[Math.floor(Math.random() * quoteValue.length)]
    outputQuotes.innerText = randomQuote
  }
}
