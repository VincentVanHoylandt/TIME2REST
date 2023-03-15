Skip to content
Search or jump to…
Pull requests
Issues
Codespaces
Marketplace
Explore

@Akleodorion
VincentVanHoylandt
/
TIME2REST
Public
Fork your own copy of VincentVanHoylandt/TIME2REST
Code
Issues
Pull requests
Actions
Projects
Wiki
Security
Insights
TIME2REST/db/seeds.rb /
@Kherset
Kherset Seeds misent a jour
Latest commit 3565749 14 hours ago
 History
 3 contributors
@VincentVanHoylandt@Kherset@Philippe-Gllrt
228 lines (226 sloc)  29.4 KB

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Offer.destroy_all
puts "offer deleted"
User.destroy_all
puts "Done!"

puts "Creating users..."
user1 = User.create({ first_name: "Vincent", last_name: "Vanhoylandt", age: 27, email: "vincent@lewagon.fr",
                      password: "lewagon", job_title: "Développeur Web", diplomas: "Master en Informatique Appliquée",
                      experiences: "3 ans en tant que développeur full-stack chez une start-up specialisee en sextoy,
                      1 an en tant que développeur back-end chez Google",
                      Address: "22 Rue du Faubourg Saint-Antoine, Paris, 75011, France" })
user2 = User.create({ first_name: "Christian", last_name: "Bondzie", age: 44, email: "christian@lewagon.fr",
                      password: "lewagon", job_title: "Architecte d'intérieur", diplomas: "Diplôme
                      d'architecte d'intérieur", experiences: "2 ans en tant qu'architecte
                      d'intérieur chez design & family, 3 ans en tant que freelance",
                      Address: "15 Rue de la République, Lyon, 69001, France" })
user3 = User.create({ first_name: "Philippe", last_name: "Goulliard", age: 49, email: "philippe@lewagon.fr",
                      password: "lewagon", job_title: "Infirmier à domicile",
                      diplomas: "Diplôme d'état d'infirmier", experiences: "10 ans en tant
                      qu'infirmier a l'hopital St Maurice, 3 ans en tant qu'infirmier à domicile",
                      Address: "2 Rue de la Paix, Nice, 06000, France" })
user4 = User.create({ first_name: "Jeremy", last_name: "Twardowski", age: 36, email: "jeremy@lewagon.fr",
                      password: "lewagon", job_title: "Electricien",
                      diplomas: "CAP Electricien", experiences: "5 ans en tant qu'apprenti chez un artisan
                      électricien, 6 ans en tant qu'électricien chez Building factory",
                      Address: "7 Rue de la Pompe, Marseille, 13008, France" })
user5 = User.create({ first_name: "Sophie", last_name: "Koch", age: 52, email: "sophie@lewagon.fr",
                      password: "lewagon", job_title: "Psychologue clinicien", diplomas: "Doctorat en Psychologie",
                      experiences: "8 ans en tant que psychologue clinicienne dans un hôpital,
                      4 ans en tant que psychothérapeute en libéral",
                      Address: "10 Rue du Général Leclerc, Toulouse, 31000, France" })
user6 = User.create({ first_name: "Maximilian", last_name: "Bauer", age: 22, email: "maximilian@lewagon.fr",
                      password: "lewagon", job_title: "Chef de projet informatique", diplomas: "Master en Ingénierie
                      Informatique", experiences: "1 an en tant que développeur chez une Tzi-Dzi,
                      1 an en tant que chef de projet chez Info Conseil",
                      Address: "22 Rue de la Roquette, Nantes, 44000, France" })
user7 = User.create({ first_name: "Maria", last_name: "Schmidt", age: 39, email: "maria@lewagon.fr",
                      password: "lewagon", job_title: "Traducteur", diplomas: "Diplôme de traducteur international",
                      experiences: "Stage de 7 mois pour le gourvernement du Venezuella",
                      Address: "12 Rue de la Mairie, Strasbourg, 67000, France" })
user8 = User.create({ first_name: "Alexander", last_name: "Meyer", age: 28, email: "alexander@lewagon.fr",
                      password: "lewagon", job_title: "Infirmier à domicile", diplomas: "Diplôme d'État d'infirmier",
                      experiences: "Infirmier à domicile chez X Soins pendant 3 ans",
                      Address: "8 Rue des Capucins, Lille, 59000, France" })
user9 = User.create({ first_name: "Laura", last_name: "Wagner", age: 32, email: "laura@lewagon.fr",
                      password: "lewagon", job_title: "Consultant en marketing", diplomas: "Master en marketing et
                      communication", experiences: "Consultant en marketing chez Y Agency pendant 4 ans",
                      Address: "35 Rue des Martyrs, Bordeaux, 33000, France" })
user10 = User.create({ first_name: "Felix", last_name: "Becker", age: 43, email: "felix@lewagon.fr",
                       password: "lewagon", job_title: "Graphiste", diplomas: "Diplôme en design graphique",
                       experiences: "Graphiste chez Z Agency pendant 5 ans",
                       Address: "9 Rue de la Liberté, Rennes, 35000, France" })
user11 = User.create({ first_name: "Nina", last_name: "Hofmann", age: 29, email: "nina@lewagon.fr",
                       password: "lewagon", job_title: "Mécanicien automobile", diplomas: "Brevet de technicien
                       automobile", experiences: "1 an d'expérience chez BMW",
                       Address: "14 Rue Saint-Honoré, Montpellier, 34000, France" })
user12 = User.create({ first_name: "Jürgen", last_name: "Schulz", age: 50, email: "jurgen@lewagon.fr",
                       password: "lewagon", job_title: "Consultant en ressources humaines", diplomas: "Master en gestion
                       des ressources humaines", experiences: "3 ans d'expérience chez PwC",
                       Address: "18 Rue de la Fontaine, Caen, 14000, France" })
user13 = User.create({ first_name: "Maja", last_name: "Krüger", age: 34, email: "maja@lewagon.fr",
                       password: "lewagon", job_title: "Photographe", diplomas: "BTS Photographie",
                       experiences: "2 ans d'expérience en freelance",
                       Address: "11 Rue de la République, Rouen, 76000, France" })
user14 = User.create({ first_name: "Jan", last_name: "Werner", age: 25, email: "jan@lewagon.fr",
                       password: "lewagon", job_title: "Chercheur scientifique", diplomas: "Doctorat en biologie
                       moléculaire", experiences: "3 ans de recherche postdoctorale à l'INSERM",
                       Address: "1 Rue du 8 Mai 1945, Grenoble, 38000, France" })
user15 = User.create({ first_name: "Caroline", last_name: "Hermann", age: 46, email: "caroline@lewagon.fr",
                       password: "lewagon", job_title: "Journaliste", diplomas: "Master en journalisme",
                       experiences: "10 ans d'expérience en tant que correspondante à l'étranger",
                       Address: "6 Rue des Jacobins, Orléans, 45000, France" })
user16 = User.create({ first_name: "Fritz", last_name: "Peters", age: 38, email: "fritz@lewagon.fr",
                       password: "lewagon", job_title: "Analyste financier", diplomas: "Master en finance",
                       experiences: "2 ans chez Goldman Sachs",
                       Address: "3 Rue des Champs Elysées, Dijon, 21000, France" })
user17 = User.create({ first_name: "Antonia", last_name: "Schröder", age: 27, email: "antonia@lewagon.fr",
                       password: "lewagon", job_title: "Analyste financier", diplomas: "Master en Finance Quantitative",
                       experiences: "Expérience en banque d'investissement et en analyse de données de marché",
                       Address: "17 Rue de la Gare, Poitiers, 86000, France" })
user18 = User.create({ first_name: "Eric", last_name: "Neumann", age: 31, email: "eric@lewagon.fr",
                       password: "lewagon", job_title: "Monteur vidéo", diplomas: "Licence en Cinématographie",
                       experiences: "Expérience en montage vidéo pour la publicité et le cinéma indépendant",
                       Address: "23 Rue de la Victoire, Lorient, 56100, France" })
user19 = User.create({ first_name: "Lucas", last_name: "Meyer", age: 41, email: "lucas@lewagon.fr",
                       password: "lewagon", job_title: "Psychiatre", diplomas: "Doctorat en psychiatrie clinique",
                       experiences: "Psychiatre 6 ans a l'hopital du dernier espoir et en pratique privée",
                       Address: "5 Rue de la Concorde, Annecy, 74000, France" })
user20 = User.create({ first_name: "Gertrude", last_name: "Dubois", age: 28, email: "gertrude@lewagon.fr",
                       password: "lewagon", job_title: "Analyste de données", diplomas: "Master en Science des données",
                       experiences: "Expérience en analyse de données pour une entreprise de
                       technologie et une entreprise de vente au détail",
                       Address: "16 Rue de la Clef, Lille, 59000, France" })
user21 = User.create({ first_name: "Pierre", last_name: "Lacroix", age: 45, email: "pierre@lewagon.fr",
                       password: "lewagon", job_title: "Décorateur d'évènements",
                       diplomas: "BTS Design d'espace", experiences: "J'ai travaillé
                       pendant 2 ans pour une agence d'événementiel en tant que décorateur
                       et j'ai également travaillé en freelance pour différents clients.",
                       Address: "13 Rue des Ecoles, Aix-en-Provence, 13100, France" })
user22 = User.create({ first_name: "Emma", last_name: "Martin", age: 37, email: "emma@lewagon.fr",
                       password: "lewagon", job_title: "Infirmiere à domicile",
                       diplomas: "Diplôme d'Etat d'Infirmière", experiences: "J'ai travaillé pendant 5 ans dans
                       différents services hospitaliers avant de me spécialiser dans les soins à domicile.",
                       Address: "21 Rue du Vieux Marché, Rouen, 76000, France" })
user23 = User.create({ first_name: "Antoine", last_name: "Rousseau", age: 30, email: "antoine@lewagon.fr",
                       password: "lewagon", job_title: "Electricien", diplomas: "CAP Électricien",
                       experiences: "J'ai travaillé pendant 3 ans dans une entreprise d'électricité avant de me mettre
                       à mon compte.",
                       Address: "4 Rue du Commerce, Dijon, 21000, France" })
user24 = User.create({ first_name: "Julie", last_name: "Lefèvre", age: 32, email: "julie@lewagon.fr",
                       password: "lewagon", job_title: "Infirmiere à domicile",
                       diplomas: "Diplôme d'Etat d'Infirmière", experiences: "J'ai travaillé pendant
                       6 ans dans un hôpital avant de me lancer dans les soins à domicile.",
                       Address: "28 Rue des Augustins, Montpellier, 34000, France" })
user25 = User.create({ first_name: "Victor", last_name: "Bouchard", age: 48, email: "victor@lewagon.fr",
                       password: "lewagon", job_title: "Infirmier à domicile", diplomas: "Diplôme d'Etat d'Infirmier",
                       experiences: "J'ai travaillé pendant 8 ans dans différents services hospitaliers avant
                       de me spécialiser dans les soins à domicile.",
                       Address: "19 Rue de la Croix Nivert, Paris, 75015, France" })
user26 = User.create({ first_name: "Berangere", last_name: "Picard", age: 22, email: "berangere@lewagon.fr",
                       password: "lewagon", job_title: "Infirmiere à domicile",
                       diplomas: "Baccalauréat professionnel de soins infirmiers",
                       experiences: "Infirmière à domicile chez Particuliers & Associés pendant 2 ans",
                       Address: "30 Rue du Faubourg du Temple, Lille, 59000, France" })
user27 = User.create({ first_name: "Maxime", last_name: "Bergeron", age: 36, email: "maxime@lewagon.fr",
                       password: "lewagon", job_title: "Infirmier à domicile", diplomas: "Master en soins infirmiers",
                       experiences: "Infirmier à domicile chez Assistance & Soins pendant 3 ans et demi",
                       Address: "26 Rue de la République, Nice, 06000, France" })
user28 = User.create({ first_name: "Céline", last_name: "Renaud", age: 29, email: "celine@lewagon.fr",
                       password: "lewagon", job_title: "Infirmiere à domicile", diplomas: "Brevet professionnel de
                       soins infirmiers", experiences: "Infirmière à domicile chez Soin & Confiance pendant 1 an",
                       Address: "31 Rue du Vieux Port, Marseille, 13001, France" })
puts "users created"

puts "Creating offers..."
offer1 = Offer.create!({ user_id: user1.id, job_title: "Développeur Web",
                         description: "Je suis un développeur web freelance travaillant seul et je recherche un remplaçant. Le candidat retenu sera responsable de la maintenance et du développement de sites web de haute qualité en utilisant des langages tels que HTML, CSS, JavaScript et PHP. Le candidat idéal doit être autonome et avoir une solide expérience en gestion de bases de données et en intégration de systèmes tiers. Il est important de pouvoir travailler efficacement et de manière indépendante. Si vous êtes intéressé, veuillez envoyer votre CV.",
                         salary: 280, start_time: "2023-03-17", end_time: "2023-04-15", latitude: "49.258329", longitude: "4.031696" })
offer2 = Offer.create!({ user_id: user2.id, job_title: "Architecte d'intérieur",
                         description: "En tant qu'architecte d'intérieur indépendant, je suis à la recherche d'un remplaçant pour une période allant jusqu'à un mois. Vous devez avoir une expérience préalable en conception et être en mesure de gérer des projets de bout en bout. Contactez-moi pour plus d'informations.",
                         salary: 150, start_time: "2023-03-18", end_time: "2023-04-17", latitude: "43.577828", longitude: "7.124934" })
offer3 = Offer.create!({ user_id: user3.id, job_title: "Professeur particulier de biologie",
                         description: "Je suis un professeur particulier de biologie et j'ai besoin d'un remplaçant pendant mon absence. Vous devez être capable de dispenser des cours de biologie aux niveaux collégial et universitaire et être passionné par l'enseignement. Contactez-moi pour plus de détails.",
                         salary: 200, start_time: "2023-03-25", end_time: "2023-04-23", latitude: "43.296482", longitude: "5.36978" })
offer4 = Offer.create!({ user_id: user4.id, job_title: "Développeur web",
                         description: "Vous êtes développeur web indépendant et vous cherchez un remplacement. Le candidat choisi devra avoir une expertise solide en matière de conception et de développement de sites web de qualité, utilisant des langages tels que HTML, CSS, JavaScript et PHP et React. Il sera également nécessaire d'avoir une expérience en gestion de bases de données et en intégration de systèmes tiers. Si vous êtes passionné par les nouvelles technologies et prêt à relever des défis, envoyez-moi votre CV !",
                         salary: 120, start_time: "2023-03-31", end_time: "2023-04-30", latitude: "45.764043", longitude: "4.835659" })
offer5 = Offer.create!({ user_id: user5.id, job_title: "Psychologue clinicien",
                         description: "En tant que psychologue clinicien indépendant, j'ai besoin de quelqu'un pour me remplacer pendant mes congés. Vous devez avoir une formation en psychologie clinique et être en mesure de fournir des services de thérapie. Contactez-moi si vous êtes intéressé.",
                         salary: 300, start_time: "2023-04-01", end_time: "2023-04-29", latitude: "43.604652", longitude: "1.444209" })
offer6 = Offer.create!({ user_id: user6.id, job_title: "Chef de projet informatique",
                         description: "En tant que chef de projet informatique indépendant, je recherche un remplaçant capable de gérer des projets de développement logiciel. Vous devez avoir une expérience préalable dans la gestion de projets informatiques et être capable de travailler de manière autonome. Contactez-moi pour plus d'informations.",
                         salary: 250, start_time: "2023-04-07", end_time: "2023-05-06", latitude: "48.117266", longitude: "-1.6777926" })
offer7 = Offer.create!({ user_id: user7.id, job_title: "Traducteur",
                         description: "En tant que traducteur indépendant, j'ai besoin de quelqu'un pour me remplacer pendant que je suis absent. Vous devez être capable de traduire des documents de l'anglais vers le français et du français vers l'anglais avec une grande précision. Contactez-moi pour plus de détails.",
                         salary: 100, start_time: "2023-04-14", end_time: "2023-05-13", latitude: "48.856614", longitude: "2.3522219" })
offer8 = Offer.create!({ user_id: user8.id, job_title: "Infirmier à domicile",
                         description: "Cherche infirmier à domicile pour remplacer mon rôle pendant une période de temps. Le candidat retenu devra être en mesure de fournir des soins médicaux à domicile à des patients nécessitant une assistance médicale et une surveillance continue. Une solide expérience dans le domaine est requise, ainsi qu'un dévouement envers les patients et un souci du détail. Si vous êtes intéressé, contactez-moi dès maintenant.",
                         salary: 180, start_time: "2023-04-21", end_time: "2023-05-20", latitude: "45.764043", longitude: "4.835659" })
offer9 = Offer.create!({ user_id: user9.id, job_title: "Consultant en marketing",
                         description: "En tant que consultant en marketing indépendant, j'ai besoin de quelqu'un pour me remplacer pendant une période allant jusqu'à un mois. Vous devez avoir une expérience préalable en marketing et être capable de fournir des stratégies de marketing efficaces. Contactez-moi pour plus d'informations.",
                         salary: 220, start_time: "2023-04-28", end_time: "2023-05-27", latitude: "47.218371", longitude: "-1.553621" })
offer10 = Offer.create!({ user_id: user10.id, job_title: "Graphiste",
                          description: "En tant que graphiste indépendant, j'ai besoin de quelqu'un pour me remplacer pendant que je suis en vacances. Vous devez avoir une expérience en conception graphique et être capable de travailler avec Adobe Creative Suite. Contactez-moi pour plus de détails.",
                          salary: 90, start_time: "2023-05-05", end_time: "2023-06-04", latitude: "49.258329", longitude: "4.031696" })
offer11 = Offer.create!({ user_id: user11.id, job_title: "Mécanicien automobile",
                          description: "En tant que mécanicien automobile indépendant, j'ai besoin de quelqu'un pour me remplacer pendant que je suis en vacances. Vous devez avoir une expérience préalable en mécanique automobile et être capable de diagnostiquer et de réparer des problèmes de voiture. Contactez-moi pour plus d'informations.",
                          salary: 150, start_time: "2023-05-12", end_time: "2023-06-11", latitude: "50.631163", longitude: "3.059956" })
offer12 = Offer.create!({ user_id: user12.id, job_title: "Consultant en ressources humaines",
                          description: "En tant que consultant en ressources humaines indépendant, j'ai besoin de quelqu'un pour me remplacer pendant une période allant jusqu'à un mois. Vous devez avoir une expérience préalable en RH et être capable de gérer les recrutements, les évaluations de performance et la formation. Contactez-moi pour plus de détails.",
                          salary: 300, start_time: "2023-05-19", end_time: "2023-06-18", latitude: "43.296482", longitude: "5.36978" })
offer13 = Offer.create!({ user_id: user13.id, job_title: "Photographe",
                          description: "En tant que photographe indépendant, j'ai besoin de quelqu'un pour me remplacer pendant mes vacances. Vous devez avoir une expérience en photographie et être capable de travailler avec des équipements professionnels. Contactez-moi pour plus d'informations.",
                          salary: 280, start_time: "2023-05-26", end_time: "2023-06-25", latitude: "45.764043", longitude: "4.835659" })
offer14 = Offer.create!({ user_id: user14.id, job_title: "Chercheur scientifique",
                          description: "Travailleur indépendant cherche remplaçant pour une période de 2 semaines. Recherche chercheur scientifique compétent pour poursuivre un projet de recherche en biologie moléculaire. Bonne connaissance en PCR, clonage, western blotting requise.",
                          salary: 350, start_time: "2023-06-02", end_time: "2023-07-01", latitude: "49.442367", longitude: "1.098492" })
offer15 = Offer.create!({ user_id: user15.id, job_title: "Journaliste",
                          description: "Journaliste indépendant recherche remplaçant pour une durée de 10 jours. Doit posséder de solides compétences en journalisme d'investigation et en écriture d'articles. Le remplaçant sera chargé de couvrir les évènements locaux et d'interviewer les personnalités locales.",
                          salary: 200, start_time: "2023-06-09", end_time: "2023-07-08", latitude: "50.62925", longitude: "3.057256" })
offer16 = Offer.create!({ user_id: user16.id, job_title: "Coach sportif",
                          description: "Coach sportif indépendant cherche remplaçant pour une période de 3 semaines. Doit posséder une expérience dans l'entraînement de groupes de fitness. Le remplaçant sera en charge de diriger des cours collectifs et des séances individuelles.",
                          salary: 120, start_time: "2023-06-16", end_time: "2023-07-15", latitude: "48.856614", longitude: "2.3522219" })
offer17 = Offer.create!({ user_id: user17.id, job_title: "Analyste financier",
                          description: "Analyste financier indépendant cherche remplaçant pour une période de 1 mois. Doit posséder une connaissance approfondie des marchés financiers et des instruments financiers tels que les actions, les obligations et les produits dérivés. Le remplaçant sera chargé d'analyser les tendances du marché et de recommander des investissements appropriés.",
                          salary: 250, start_time: "2023-06-23", end_time: "2023-07-22", latitude: "48.390394", longitude: "-4.486076" })
offer18 = Offer.create!({ user_id: user18.id, job_title: "Monteur vidéo",
                          description: "Monteur vidéo indépendant cherche remplaçant pour une période de 2 semaines. Doit posséder une expérience dans le montage vidéo, les effets visuels et les animations. Le remplaçant sera chargé de monter des vidéos promotionnelles et publicitaires pour divers clients.",
                          salary: 180, start_time: "2023-06-30", end_time: "2023-07-29", latitude: "43.610769", longitude: "3.876716" })
offer19 = Offer.create!({ user_id: user19.id, job_title: "Psychiatre",
                          description: "Psychiatre indépendant cherche remplaçant pour une période de 3 semaines. Doit posséder une expérience dans le traitement des troubles de l'humeur et de l'anxiété. Le remplaçant sera en charge des séances de thérapie et des évaluations diagnostiques.",
                          salary: 380, start_time: "2023-07-07", end_time: "2023-08-06", latitude: "47.749926", longitude: "7.335887" })
offer20 = Offer.create!({ user_id: user20.id, job_title: "Analyste de données",
                          description: "Si vous êtes passionné par l'analyse de données et que vous cherchez à travailler pour une variété de clients dans des secteurs différents, cette opportunité de remplacement pourrait être idéale pour vous. En tant qu'analyste de données expérimenté, je suis impatient de trouver un candidat qualifié qui sera capable de fournir un service de qualité aux clients pendant mon absence. Contactez-moi dès maintenant pour en savoir plus sur cette opportunité passionnante.",
                          salary: 200, start_time: "2023-07-14", end_time: "2023-08-13", latitude: "47.903979", longitude: "1.90925" })
offer21 = Offer.create!({ user_id: user21.id, job_title: "Décorateur d'évènements",
                          description: "Je suis un décorateur d'évènements professionnels et je suis actuellement à la recherche d'un remplaçant. Le candidat choisi sera responsable de fournir des services de décoration pour les évènements de mes clients, tels que des mariages, des anniversaires, etc. Il est important que le candidat ait une expérience en décoration d'intérieur, qu'il soit créatif et capable de travailler de manière autonome tout en respectant les besoins des clients. Si vous êtes un décorateur d'évènements qualifié et que vous êtes intéressé par ce poste, veuillez me contacter pour discuter des détails du poste.",
                          salary: 150, start_time: "2023-07-21", end_time: "2023-08-20", latitude: "47.218371", longitude: "-1.553621" })
offer22 = Offer.create!({ user_id: user22.id, job_title: "Infirmier à domicile",
                          description: "Je suis actuellement un infirmier à domicile travaillant seul, et je suis à la recherche d'un remplaçant pour prendre soin de mes patients. Le candidat choisi devra fournir des soins médicaux à domicile à mes patients nécessitant une attention médicale constante. Il est important que le candidat ait une solide expérience en soins de santé à domicile et qu'il soit dévoué envers les patients. Si vous êtes un infirmier qualifié et dévoué, contactez-moi pour discuter des détails du poste.",
                          salary: 280, start_time: "2023-07-28", end_time: "2023-08-27", latitude: "50.62925", longitude: "3.057256" })
offer23 = Offer.create!({ user_id: user23.id, job_title: "Electricien",
                          description: "Je suis un électricien à domicile et je suis actuellement à la recherche d'un remplaçant. Le candidat sélectionné sera chargé de fournir des services électriques à domicile pour mes clients qui ont besoin d'une assistance technique. Il est important que le candidat ait une solide expérience en matière d'électricité et soit capable de travailler de manière autonome tout en étant dévoué envers les clients. Si vous êtes un électricien qualifié et que vous êtes intéressé par ce poste, veuillez me contacter pour discuter des détails du poste.",
                          salary: 300, start_time: "2023-08-04", end_time: "2023-09-03", latitude: "48.117266", longitude: "-1.6777926" })
offer24 = Offer.create!({ user_id: user24.id, job_title: "Infirmier à domicile",
                          description: "Je suis un infirmier à domicile et je recherche un remplaçant pour me remplacer temporairement. La personne choisie sera responsable de fournir des soins médicaux à domicile à mes patients nécessitant une assistance médicale et une surveillance continue. Il est important que le candidat ait une solide expérience dans les soins de santé à domicile et qu'il soit dévoué envers les patients. Si vous êtes intéressé, contactez-moi pour en savoir plus sur le poste.",
                          salary: 180, start_time: "2023-04-21", end_time: "2023-05-20", latitude: "43.610769", longitude: "3.876716" })
offer25 = Offer.create!({ user_id: user25.id, job_title: "Infirmier à domicile",
                          description: "J'ai besoin d'un infirmier à domicile pour remplacer notre membre du personnel actuel. Le candidat sélectionné sera responsable de fournir des soins de santé à domicile à des patients nécessitant une attention médicale constante. Une solide expérience en soins de santé à domicile est requise. Si vous êtes un infirmier qualifié et dévoué, contactez-moi pour discuter des détails de l'emploi.",
                          salary: 180, start_time: "2023-04-21", end_time: "2023-05-20", latitude: "47.492591", longitude: "0.551442" })
offer26 = Offer.create!({ user_id: user26.id, job_title: "Infirmier à domicile",
                          description: "Le candidat choisi devra être capable de fournir des soins médicaux à domicile pour les patients nécessitant une assistance médicale et une surveillance continue. Une solide expérience dans le domaine est requise, ainsi qu'un dévouement envers les patients et un souci du détail. Si vous êtes intéressé, contactez-moi dès maintenant.",
                          salary: 180, start_time: "2023-04-21", end_time: "2023-05-20", latitude: "47.903979", longitude: "1.90925" })
offer27 = Offer.create!({ user_id: user27.id, job_title: "Infirmier à domicile",
                          description: "Infirmier à domicile cherche remplaçant. Le candidat sélectionné sera en charge de la fourniture de soins médicaux à domicile à des patients ayant besoin d'assistance médicale. Une solide expérience en soins de santé à domicile est requise, ainsi qu'un dévouement envers les patients et un souci du détail. Si vous êtes intéressé, contactez-moi pour en savoir plus.",
                          salary: 180, start_time: "2023-04-21", end_time: "2023-05-20", latitude: "48.390394", longitude: "-4.486076" })
offer28 = Offer.create!({ user_id: user28.id, job_title: "Infirmier à domicile",
                          description: "Je cherche un remplaçant. Le candidat choisi sera responsable de fournir des soins de santé à domicile à des patients nécessitant une attention médicale constante. Une solide expérience en soins de santé à domicile est requise. Si vous êtes un infirmier qualifié et dévoué, contactez-moi.",
                          salary: 180, start_time: "2023-04-21", end_time: "2023-05-20", latitude: "47.492591", longitude: "0.551442" })
puts "offers created"
