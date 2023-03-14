let buttonQuotes = document.getElementById('button-quotes');
let outputQuotes = document.getElementById('output-quote');
let quotes =
[
"Utilisez des mots clés pertinents pour faciliter la recherche par des candidats qualifiés.",
"Utilisez un langage clair et concis pour décrire les responsabilités et les exigences du poste.",
"Faites en sorte que votre annonce d'emploi se distingue des autres avec un titre accrocheur.",
"Soyez transparent sur la rémunération et les avantages <pour éviter les malentendus futurs.",
]

buttonQuotes.addEventListener('click', function() {
  var randomQuote = quotes[Math.floor(Math.random() * quotes.length)]
  outputQuotes.innerHTML = randomQuote;
})
