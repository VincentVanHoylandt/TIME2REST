puts "Cleaning database..."
Offer.destroy_all
puts "offer deleted"
User.destroy_all
puts "Done!"

puts "Creating users..."

user1 = User.create({ first_name: "Vincent", last_name: "Vanhoylandt", age: 27, email: "vincent@lewagon.fr",
                      password: "lewagon", job_title: "Développeur Web" })
diplomas1 = Diploma.create(user: user1, start_time: "01-09-2022", end_time: "29/02/2023", title: "Diplôme d'Ingénieur en Développement Web", description: "Formation approfondie sur les technologies web, l'architecture logicielle et la sécurité.")
experiences1 = Experience.create(user: user1, start_time: "01-07-2020", end_time: "30-06-2022", title: "Développeur Front-end chez ABC Company", description: "Création et maintenance de sites web réactifs et optimisés pour les mobiles.")


user2 = User.create({ first_name: "Christian", last_name: "Bondzie", age: 44, email: "christian@lewagon.fr",
                      password: "lewagon", job_title: "Architecte d'intérieur" })
diplomas2 = Diploma.create(user: user2, start_time: "01-09-2019", end_time: "30-06-2020", title: "Diplôme en Architecture d'Intérieur", description: "Formation en design d'intérieur, dessin technique et gestion de projet.")
experiences2 = Experience.create(user: user2, start_time: "01-07-2021", end_time: "30-01-2023", title: "Architecte d'Intérieur chez ABC Design", description: "Conception de plans d'aménagement et de design intérieur pour des projets résidentiels et commerciaux.")

user3 = User.create({ first_name: "Philippe", last_name: "Goulliard", age: 49, email: "philippe@lewagon.fr",
                      password: "lewagon", job_title: "Infirmier à domicile" })
diplomas3 = Diploma.create(user: user3, start_time: "01-09-2016", end_time: "30-06-2019", title: "Diplôme d'État d'Infirmier", description: "Formation en soins infirmiers, pharmacologie et hygiène hospitalière.")
experiences3 = Experience.create(user: user3, start_time: "01-07-2019", end_time: "30-06-2021", title: "Infirmier à domicile chez ABC Santé", description: "Soins infirmiers à domicile pour des patients atteints de maladies chroniques.")

user4 = User.create({ first_name: "Jeremy", last_name: "Twardowski", age: 36, email: "jeremy@lewagon.fr",
                      password: "lewagon", job_title: "Electricien" })
diplomas4 = Diploma.create!(user: user4, start_time: "30-06-2013", end_time: "30-06-2016", title: "BEP Électrotechnique", description: "Formation en installation électrique, maintenance et dépannage des équipements électriques." )
experiences4 = Experience.create(user: user4, start_time: "01-07-2016", end_time: "30-06-2020", title: "Électricien chez DEF Électricité", description: "Installation, maintenance et réparation des équipements électriques pour les clients résidentiels et commerciaux.")

user5 = User.create({ first_name: "Sophie", last_name: "Koch", age: 52, email: "sophie@lewagon.fr",
                      password: "lewagon", job_title: "Psychologue clinicien" })
diplomas5 = Diploma.create(user: user5, start_time: "01-09-2008", end_time: "30-06-2013", title: "Master de Psychologie Clinique", description: "Formation en psychologie clinique, thérapies cognitives et comportementales et approches psychodynamiques.")
experiences5 = Experience.create(user: user5, start_time: "01-07-2013", end_time: "30-06-2019", title: "Psychologue clinicien chez Cabinet de Psychologie XYZ", description: "Évaluation et traitement de patients souffrant de troubles psychologiques tels que l'anxiété, la dépression et les troubles alimentaires." )

user6 = User.create({ first_name: "Maximilian", last_name: "Bauer", age: 22, email: "maximilian@lewagon.fr",
                      password: "lewagon", job_title: "Chef de projet informatique" })
diplomas6 = Diploma.create(user: user6, start_time: "01-09-2010", end_time: "30-06-2014", title: "Master en Ingénierie Informatique", description: "Formation en gestion de projet informatique, développement de logiciels et bases de données." )
experiences6 = Experience.create(user: user6, start_time: "01-07-2014", end_time: "30-06-2020", title: "Chef de projet informatique chez ABC Informatique", description: "Gestion de projets informatiques pour les clients du secteur de la finance, développement de logiciels et suivi de l'avancement des projets." )

user7 = User.create({ first_name: "Maria", last_name: "Schmidt", age: 39, email: "maria@lewagon.fr",
                      password: "lewagon", job_title: "Traducteur" })
diplomas7 = Diploma.create(user: user7, start_time: "01-09-2006", end_time: "30-06-2010", title: "Licence en Langues étrangères appliquées", description: "Formation en langues étrangères, traduction et interprétation.")
experiences7 = Experience.create(user: user7, start_time: "01-07-2010", end_time: "30-06-2015", title: "Traducteur chez Agence de traduction XYZ", description: "Traduction de documents juridiques et financiers de l'anglais vers le français pour les clients de l'agence." )

user8 = User.create({ first_name: "Julie", last_name: "Lefèvre", age: 32, email: "julie@lewagon.fr",
                       password: "lewagon", job_title: "Infirmiere à domicile" })
diplomas8 = Diploma.create(user: user8, start_time: "01-09-2008", end_time: "30-06-2011", title: "Diplôme d'Etat d'Infirmier", description: "Formation en soins infirmiers, pharmacologie, anatomie et physiologie.")
experiences8 = Experience.create(user: user8, start_time: "01-07-2011", end_time: "30-06-2015", title: "Infirmier à domicile chez Soins à Domicile SARL", description: "Soins à domicile pour les patients atteints de maladies chroniques, gestion de cas, et coordination avec les médecins.")

user9 = User.create({ first_name: "Victor", last_name: "Bouchard", age: 48, email: "victor@lewagon.fr",
                       password: "lewagon", job_title: "Infirmier à domicile" })
diplomas9 = Diploma.create(user: user9, start_time: "01-09-2012", end_time: "30-06-2015", title: "Licence en Sciences Infirmières", description: "Formation en soins infirmiers, psychologie, et en santé publique.")
experiences9 = Experience.create(user: user9, start_time: "01-07-2015", end_time: "30-06-2017", title: "Infirmier de nuit chez Assistance à Domicile SAS", description: "Soins infirmiers de nuit pour les patients âgés, gestion de cas, et assistance aux activités quotidiennes.")

user10 = User.create({ first_name: "Berangere", last_name: "Picard", age: 22, email: "berangere@lewagon.fr",
                       password: "lewagon", job_title: "Infirmiere à domicile" })
diplomas10 = Diploma.create(user: user10, start_time: "01-09-2016", end_time: "30-06-2018", title: "Certificat en Soins Palliatifs", description: "Formation spécialisée en soins palliatifs pour les patients atteints de maladies graves.")
experiences10 = Experience.create(user: user10, start_time: "01-07-2018", end_time: "30-06-2020", title: "Infirmier à domicile indépendant", description: "Soins à domicile pour les patients atteints de maladies chroniques, gestion de cas, et coordination avec les médecins.")

user11 = User.create({ first_name: "Maxime", last_name: "Bergeron", age: 36, email: "maxime@lewagon.fr",
                       password: "lewagon", job_title: "Infirmier à domicile" })
diplomas11 = Diploma.create(user: user11, start_time: "01-09-2020", end_time: "30-06-2022", title: "Master en Soins Infirmiers à Domicile", description: "Formation spécialisée en soins à domicile, gestion de cas, et en éducation des patients et de leurs familles.")
experiences11 = Experience.create(user: user11, start_time: "01-07-2022", end_time: "30-06-2023", title: "Infirmier de soins palliatifs chez Maison de Soins Palliatifs", description: "Soins infirmiers palliatifs pour les patients atteints de maladies graves en phase terminale.")

puts "users created"

puts "Creating offers..."
offer1 = Offer.create!({ user_id: user1.id, job_title: "Développeur Web",
                         description: "Je suis un développeur web freelance travaillant seul et je recherche un remplaçant. Le candidat retenu sera responsable de la maintenance et du développement de sites web de haute qualité en utilisant des langages tels que HTML, CSS, JavaScript et PHP. Le candidat idéal doit être autonome et avoir une solide expérience en gestion de bases de données et en intégration de systèmes tiers. Il est important de pouvoir travailler efficacement et de manière indépendante. Si vous êtes intéressé, veuillez envoyer votre CV.",
                         salary: 280, start_time: "2023-03-17", end_time: "2023-04-15", address: "22 Rue du Faubourg Saint-Antoine, Paris, 75011, France" })
offer2 = Offer.create!({ user_id: user2.id, job_title: "Architecte d'intérieur",
                         description: "En tant qu'architecte d'intérieur indépendant, je suis à la recherche d'un remplaçant pour une période allant jusqu'à un mois. Vous devez avoir une expérience préalable en conception et être en mesure de gérer des projets de bout en bout. Contactez-moi pour plus d'informations.",
                         salary: 150, start_time: "2023-03-18", end_time: "2023-04-17", address: "15 Rue de la République, Lyon, 69001, France" })
offer3 = Offer.create!({ user_id: user3.id, job_title: "Professeur particulier de biologie",
                         description: "Je suis un professeur particulier de biologie et j'ai besoin d'un remplaçant pendant mon absence. Vous devez être capable de dispenser des cours de biologie aux niveaux collégial et universitaire et être passionné par l'enseignement. Contactez-moi pour plus de détails.",
                         salary: 200, start_time: "2023-03-25", end_time: "2023-04-23", address: "2 Rue de la Paix, Nice, 06000, France" })
offer4 = Offer.create!({ user_id: user4.id, job_title: "Développeur web",
                         description: "Vous êtes développeur web indépendant et vous cherchez un remplacement. Le candidat choisi devra avoir une expertise solide en matière de conception et de développement de sites web de qualité, utilisant des langages tels que HTML, CSS, JavaScript et PHP et React. Il sera également nécessaire d'avoir une expérience en gestion de bases de données et en intégration de systèmes tiers. Si vous êtes passionné par les nouvelles technologies et prêt à relever des défis, envoyez-moi votre CV !",
                         salary: 120, start_time: "2023-03-31", end_time: "2023-04-30", address: "10 Rue du Général Leclerc, Toulouse, 31000, France" })
offer5 = Offer.create!({ user_id: user5.id, job_title: "Psychologue clinicien",
                         description: "En tant que psychologue clinicien indépendant, j'ai besoin de quelqu'un pour me remplacer pendant mes congés. Vous devez avoir une formation en psychologie clinique et être en mesure de fournir des services de thérapie. Contactez-moi si vous êtes intéressé.",
                         salary: 300, start_time: "2023-04-01", end_time: "2023-04-29", latitude: "43.604652", longitude: "1.444209" })
offer6 = Offer.create!({ user_id: user6.id, job_title: "Chef de projet informatique",
                         description: "En tant que chef de projet informatique indépendant, je recherche un remplaçant capable de gérer des projets de développement logiciel. Vous devez avoir une expérience préalable dans la gestion de projets informatiques et être capable de travailler de manière autonome. Contactez-moi pour plus d'informations.",
                         salary: 250, start_time: "2023-04-07", end_time: "2023-05-06", address: "22 Rue de la Roquette, Nantes, 44000, France" })
offer7 = Offer.create!({ user_id: user7.id, job_title: "Traducteur",
                         description: "En tant que traducteur indépendant, j'ai besoin de quelqu'un pour me remplacer pendant que je suis absent. Vous devez être capable de traduire des documents de l'anglais vers le français et du français vers l'anglais avec une grande précision. Contactez-moi pour plus de détails.",
                         salary: 100, start_time: "2023-04-14", end_time: "2023-05-13", address: "12 Rue de la Mairie, Strasbourg, 67000, France" })
offer8 = Offer.create!({ user_id: user8.id, job_title: "Infirmier à domicile",
                         description: "Cherche infirmier à domicile pour remplacer mon rôle pendant une période de temps. Le candidat retenu devra être en mesure de fournir des soins médicaux à domicile à des patients nécessitant une assistance médicale et une surveillance continue. Une solide expérience dans le domaine est requise, ainsi qu'un dévouement envers les patients et un souci du détail. Si vous êtes intéressé, contactez-moi dès maintenant.",
                         salary: 180, start_time: "2023-04-21", end_time: "2023-05-20", address: "8 Rue des Capucins, Lille, 59000, France" })
offer9 = Offer.create!({ user_id: user9.id, job_title: "Infirmier à domicile",
                          description: "Le candidat choisi devra être capable de fournir des soins médicaux à domicile pour les patients nécessitant une assistance médicale et une surveillance continue. Une solide expérience dans le domaine est requise, ainsi qu'un dévouement envers les patients et un souci du détail. Si vous êtes intéressé, contactez-moi dès maintenant.",
                          salary: 180, start_time: "2023-04-21", end_time: "2023-05-20", address: "30 Rue du Faubourg du Temple, Lille, 59000, France" })
offer10 = Offer.create!({ user_id: user10.id, job_title: "Infirmier à domicile",
                          description: "Infirmier à domicile cherche remplaçant. Le candidat sélectionné sera en charge de la fourniture de soins médicaux à domicile à des patients ayant besoin d'assistance médicale. Une solide expérience en soins de santé à domicile est requise, ainsi qu'un dévouement envers les patients et un souci du détail. Si vous êtes intéressé, contactez-moi pour en savoir plus.",
                          salary: 180, start_time: "2023-04-21", end_time: "2023-05-20", address: "26 Rue de la République, Nice, 06000, France" })
offer11 = Offer.create!({ user_id: user11.id, job_title: "Infirmier à domicile",
                          description: "Je cherche un remplaçant. Le candidat choisi sera responsable de fournir des soins de santé à domicile à des patients nécessitant une attention médicale constante. Une solide expérience en soins de santé à domicile est requise. Si vous êtes un infirmier qualifié et dévoué, contactez-moi.",
                          salary: 180, start_time: "2023-04-21", end_time: "2023-05-20", address: "31 Rue du Vieux Port, Marseille, 13001, France" })
puts "offers created"
