# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "i18n"
require 'faker'
require 'date'

start_date = Date.today
    end_date = (Date.today + 14).to_time.to_i
    random_date_1 = Time.at(rand(start_date.to_time.to_i..end_date)).to_date

    start_date = random_date_1.to_time.to_i
    end_date = (Date.today + 30).to_time.to_i
    random_date_2 = Time.at(rand(start_date..end_date)).to_date

puts "Cleaning database..."
Offer.destroy_all
puts "offer deleted"
Diploma.destroy_all
puts "offer deleted"
User.destroy_all
puts "Done!"

# puts "Creating users..."

user1 = User.create({ picture_url: "https://avatars.githubusercontent.com/u/122786724?v=4", first_name: "Vincent", last_name: "Vanhoylandt", age: 27, email: "vincent@lewagon.fr",
                      password: "lewagon", job_title: "Développeur Web" })
diplomas1 = Diploma.create(user: user1, start_time: "01-09-2022", end_time: "29/02/2023", title: "Diplôme d'Ingénieur en Développement Web", description: "Formation approfondie sur les technologies web, l'architecture logicielle et la sécurité.")
experiences1 = Experience.create(user: user1, start_time: "01-07-2020", end_time: "30-06-2022", title: "Développeur Front-end chez ABC Company", description: "Création et maintenance de sites web réactifs et optimisés pour les mobiles.")


user2 = User.create({ picture_url: "https://avatars.githubusercontent.com/u/73429254?v=4", first_name: "Christian", last_name: "Bondzie", age: 44, email: "christian@lewagon.fr",
                      password: "lewagon", job_title: "Architecte d'intérieur" })
diplomas2 = Diploma.create(user: user2, start_time: "01-09-2019", end_time: "30-06-2020", title: "Diplôme en Architecture d'Intérieur", description: "Formation en design d'intérieur, dessin technique et gestion de projet.")
experiences2 = Experience.create(user: user2, start_time: "01-07-2021", end_time: "30-01-2023", title: "Architecte d'Intérieur chez ABC Design", description: "Conception de plans d'aménagement et de design intérieur pour des projets résidentiels et commerciaux.")

user3 = User.create({ picture_url: "https://avatars.githubusercontent.com/u/122784805?v=4", first_name: "Philippe", last_name: "Goulliart", age: 49, email: "philippe@lewagon.fr",
                      password: "lewagon", job_title: "Infirmier à domicile" })
diplomas3 = Diploma.create(user: user3, start_time: "01-09-2016", end_time: "30-06-2019", title: "Diplôme d'État d'Infirmier", description: "Formation en soins infirmiers, pharmacologie et hygiène hospitalière.")
experiences3 = Experience.create(user: user3, start_time: "01-07-2019", end_time: "30-06-2021", title: "Infirmier à domicile chez ABC Santé", description: "Soins infirmiers à domicile pour des patients atteints de maladies chroniques.")

offer1 = Offer.create!({ user_id: user3.id, job_title: user3.job_title, description: "Je suis à la recherche d'un travailleur indépendant pour me remplacer pendant que je suis en congé annuel. Le candidat retenu sera responsable de gérer mes clients et de fournir des services de qualité. Si vous êtes intéressés, veuillez me contacter avec votre CV.",
                         salary: 150, start_time: random_date_1, end_time: random_date_2, address: "lille" })

user4 = User.create({ picture_url: "https://avatars.githubusercontent.com/u/62162162?v=4", first_name: "Jeremy", last_name: "Twardowski", age: 36, email: "jeremy@lewagon.fr",
                      password: "lewagon", job_title: "Infirmier à domicile" })
diplomas4 = Diploma.create(user: user4, start_time: "01-09-2016", end_time: "30-06-2019", title: "Diplôme d'État d'Infirmier", description: "Formation en soins infirmiers, pharmacologie et hygiène hospitalière.")
experiences4 = Experience.create(user: user4, start_time: "01-07-2019", end_time: "30-06-2021", title: "Infirmier à domicile chez ABC Santé", description: "Soins infirmiers à domicile pour des patients atteints de maladies chroniques.")


  offer2 = Offer.create!({ user_id: user4.id, job_title: user4.job_title, description: "Je suis à la recherche d'un travailleur indépendant pour me remplacer pendant que je suis en congé annuel. Le candidat retenu sera responsable de gérer mes clients et de fournir des services de qualité. Si vous êtes intéressés, veuillez me contacter avec votre CV.",
    salary: 150, start_time: (Date.now + 3), end_time: (Date.now + 13), address: "lille" })


# user5 = User.create({ first_name: "Sophie", last_name: "Koch", age: 52, email: "sophie@lewagon.fr",
#                       password: "lewagon", job_title: "Psychologue clinicien" })
# diplomas5 = Diploma.create(user: user5, start_time: "01-09-2008", end_time: "30-06-2013", title: "Master de Psychologie Clinique", description: "Formation en psychologie clinique, thérapies cognitives et comportementales et approches psychodynamiques.")
# experiences5 = Experience.create(user: user5, start_time: "01-07-2013", end_time: "30-06-2019", title: "Psychologue clinicien chez Cabinet de Psychologie XYZ", description: "Évaluation et traitement de patients souffrant de troubles psychologiques tels que l'anxiété, la dépression et les troubles alimentaires." )

# user6 = User.create({ first_name: "Maximilian", last_name: "Bauer", age: 22, email: "maximilian@lewagon.fr",
#                       password: "lewagon", job_title: "Chef de projet informatique" })
# diplomas6 = Diploma.create(user: user6, start_time: "01-09-2010", end_time: "30-06-2014", title: "Master en Ingénierie Informatique", description: "Formation en gestion de projet informatique, développement de logiciels et bases de données." )
# experiences6 = Experience.create(user: user6, start_time: "01-07-2014", end_time: "30-06-2020", title: "Chef de projet informatique chez ABC Informatique", description: "Gestion de projets informatiques pour les clients du secteur de la finance, développement de logiciels et suivi de l'avancement des projets." )

# user7 = User.create({ first_name: "Maria", last_name: "Schmidt", age: 39, email: "maria@lewagon.fr",
#                       password: "lewagon", job_title: "Traducteur" })
# diplomas7 = Diploma.create(user: user7, start_time: "01-09-2006", end_time: "30-06-2010", title: "Licence en Langues étrangères appliquées", description: "Formation en langues étrangères, traduction et interprétation.")
# experiences7 = Experience.create(user: user7, start_time: "01-07-2010", end_time: "30-06-2015", title: "Traducteur chez Agence de traduction XYZ", description: "Traduction de documents juridiques et financiers de l'anglais vers le français pour les clients de l'agence." )

# user8 = User.create({ first_name: "Julie", last_name: "Lefèvre", age: 32, email: "julie@lewagon.fr",
#                        password: "lewagon", job_title: "Infirmiere à domicile" })
# diplomas8 = Diploma.create(user: user8, start_time: "01-09-2008", end_time: "30-06-2011", title: "Diplôme d'Etat d'Infirmier", description: "Formation en soins infirmiers, pharmacologie, anatomie et physiologie.")
# experiences8 = Experience.create(user: user8, start_time: "01-07-2011", end_time: "30-06-2015", title: "Infirmier à domicile chez Soins à Domicile SARL", description: "Soins à domicile pour les patients atteints de maladies chroniques, gestion de cas, et coordination avec les médecins.")

# user9 = User.create({ first_name: "Victor", last_name: "Bouchard", age: 48, email: "victor@lewagon.fr",
#                        password: "lewagon", job_title: "Infirmier à domicile" })
# diplomas9 = Diploma.create(user: user9, start_time: "01-09-2012", end_time: "30-06-2015", title: "Licence en Sciences Infirmières", description: "Formation en soins infirmiers, psychologie, et en santé publique.")
# experiences9 = Experience.create(user: user9, start_time: "01-07-2015", end_time: "30-06-2017", title: "Infirmier de nuit chez Assistance à Domicile SAS", description: "Soins infirmiers de nuit pour les patients âgés, gestion de cas, et assistance aux activités quotidiennes.")

# user10 = User.create({ first_name: "Berangere", last_name: "Picard", age: 22, email: "berangere@lewagon.fr",
#                        password: "lewagon", job_title: "Infirmiere à domicile" })
# diplomas10 = Diploma.create(user: user10, start_time: "01-09-2016", end_time: "30-06-2018", title: "Certificat en Soins Palliatifs", description: "Formation spécialisée en soins palliatifs pour les patients atteints de maladies graves.")
# experiences10 = Experience.create(user: user10, start_time: "01-07-2018", end_time: "30-06-2020", title: "Infirmier à domicile indépendant", description: "Soins à domicile pour les patients atteints de maladies chroniques, gestion de cas, et coordination avec les médecins.")

# user11 = User.create({ first_name: "Maxime", last_name: "Bergeron", age: 36, email: "maxime@lewagon.fr",
#                        password: "lewagon", job_title: "Infirmier à domicile" })
# diplomas11 = Diploma.create(user: user11, start_time: "01-09-2020", end_time: "30-06-2022", title: "Master en Soins Infirmiers à Domicile", description: "Formation spécialisée en soins à domicile, gestion de cas, et en éducation des patients et de leurs familles.")
# experiences11 = Experience.create(user: user11, start_time: "01-07-2022", end_time: "30-06-2023", title: "Infirmier de soins palliatifs chez Maison de Soins Palliatifs", description: "Soins infirmiers palliatifs pour les patients atteints de maladies graves en phase terminale.")

# puts "users created"

# puts "Creating offers..."
# offer1 = Offer.create!({ user_id: user1.id, job_title: "Développeur Web",
#                          description: "Je suis un développeur web freelance travaillant seul et je recherche un remplaçant. Le candidat retenu sera responsable de la maintenance et du développement de sites web de haute qualité en utilisant des langages tels que HTML, CSS, JavaScript et PHP. Le candidat idéal doit être autonome et avoir une solide expérience en gestion de bases de données et en intégration de systèmes tiers. Il est important de pouvoir travailler efficacement et de manière indépendante. Si vous êtes intéressé, veuillez envoyer votre CV.",
#                          salary: 280, start_time: "2023-03-17", end_time: "2023-04-15", address: "22 Rue du Faubourg Saint-Antoine, Paris, 75011, France" })
# offer2 = Offer.create!({ user_id: user2.id, job_title: "Architecte d'intérieur",
#                          description: "En tant qu'architecte d'intérieur indépendant, je suis à la recherche d'un remplaçant pour une période allant jusqu'à un mois. Vous devez avoir une expérience préalable en conception et être en mesure de gérer des projets de bout en bout. Contactez-moi pour plus d'informations.",
#                          salary: 150, start_time: "2023-03-18", end_time: "2023-04-17", address: "15 Rue de la République, Lyon, 69001, France" })
# offer3 = Offer.create!({ user_id: user3.id, job_title: "Professeur particulier de biologie",
#                          description: "Je suis un professeur particulier de biologie et j'ai besoin d'un remplaçant pendant mon absence. Vous devez être capable de dispenser des cours de biologie aux niveaux collégial et universitaire et être passionné par l'enseignement. Contactez-moi pour plus de détails.",
#                          salary: 200, start_time: "2023-03-25", end_time: "2023-04-23", address: "2 Rue de la Paix, Nice, 06000, France" })
# offer4 = Offer.create!({ user_id: user4.id, job_title: "Développeur web",
#                          description: "Vous êtes développeur web indépendant et vous cherchez un remplacement. Le candidat choisi devra avoir une expertise solide en matière de conception et de développement de sites web de qualité, utilisant des langages tels que HTML, CSS, JavaScript et PHP et React. Il sera également nécessaire d'avoir une expérience en gestion de bases de données et en intégration de systèmes tiers. Si vous êtes passionné par les nouvelles technologies et prêt à relever des défis, envoyez-moi votre CV !",
#                          salary: 120, start_time: "2023-03-31", end_time: "2023-04-30", address: "10 Rue du Général Leclerc, Toulouse, 31000, France" })
# offer5 = Offer.create!({ user_id: user5.id, job_title: "Psychologue clinicien",
#                          description: "En tant que psychologue clinicien indépendant, j'ai besoin de quelqu'un pour me remplacer pendant mes congés. Vous devez avoir une formation en psychologie clinique et être en mesure de fournir des services de thérapie. Contactez-moi si vous êtes intéressé.",
#                          salary: 300, start_time: "2023-04-01", end_time: "2023-04-29", address: "8 Boulevard Général Leclerc, Toulouse, 31000, France" })
# offer6 = Offer.create!({ user_id: user6.id, job_title: "Chef de projet informatique",
#                          description: "En tant que chef de projet informatique indépendant, je recherche un remplaçant capable de gérer des projets de développement logiciel. Vous devez avoir une expérience préalable dans la gestion de projets informatiques et être capable de travailler de manière autonome. Contactez-moi pour plus d'informations.",
#                          salary: 250, start_time: "2023-04-07", end_time: "2023-05-06", address: "22 Rue de la Roquette, Nantes, 44000, France" })
# offer7 = Offer.create!({ user_id: user7.id, job_title: "Traducteur",
#                          description: "En tant que traducteur indépendant, j'ai besoin de quelqu'un pour me remplacer pendant que je suis absent. Vous devez être capable de traduire des documents de l'anglais vers le français et du français vers l'anglais avec une grande précision. Contactez-moi pour plus de détails.",
#                          salary: 100, start_time: "2023-04-14", end_time: "2023-05-13", address: "12 Rue de la Mairie, Strasbourg, 67000, France" })
# offer8 = Offer.create!({ user_id: user8.id, job_title: "Infirmier à domicile",
#                          description: "Cherche infirmier à domicile pour remplacer mon rôle pendant une période de temps. Le candidat retenu devra être en mesure de fournir des soins médicaux à domicile à des patients nécessitant une assistance médicale et une surveillance continue. Une solide expérience dans le domaine est requise, ainsi qu'un dévouement envers les patients et un souci du détail. Si vous êtes intéressé, contactez-moi dès maintenant.",
#                          salary: 180, start_time: "2023-04-21", end_time: "2023-05-20", address: "8 Rue des Capucins, Lille, 59000, France" })
# offer9 = Offer.create!({ user_id: user9.id, job_title: "Infirmier à domicile",
#                           description: "Le candidat choisi devra être capable de fournir des soins médicaux à domicile pour les patients nécessitant une assistance médicale et une surveillance continue. Une solide expérience dans le domaine est requise, ainsi qu'un dévouement envers les patients et un souci du détail. Si vous êtes intéressé, contactez-moi dès maintenant.",
#                           salary: 180, start_time: "2023-04-21", end_time: "2023-05-20", address: "30 Rue du Faubourg du Temple, Lille, 59000, France" })
# offer10 = Offer.create!({ user_id: user10.id, job_title: "Infirmier à domicile",
#                           description: "Infirmier à domicile cherche remplaçant. Le candidat sélectionné sera en charge de la fourniture de soins médicaux à domicile à des patients ayant besoin d'assistance médicale. Une solide expérience en soins de santé à domicile est requise, ainsi qu'un dévouement envers les patients et un souci du détail. Si vous êtes intéressé, contactez-moi pour en savoir plus.",
#                           salary: 180, start_time: "2023-04-21", end_time: "2023-05-20", address: "26 Rue de la République, Nice, 06000, France" })
# offer11 = Offer.create!({ user_id: user11.id, job_title: "Infirmier à domicile",
#                           description: "Je cherche un remplaçant. Le candidat choisi sera responsable de fournir des soins de santé à domicile à des patients nécessitant une attention médicale constante. Une solide expérience en soins de santé à domicile est requise. Si vous êtes un infirmier qualifié et dévoué, contactez-moi.",
#                           salary: 180, start_time: "2023-04-21", end_time: "2023-05-20", address: "31 Rue du Vieux Port, Marseille, 13001, France" })
# puts "offers created"


puts "seeding..."
url = URI("https://randomuser.me/api/?nat=fr")
  100.times do
    response = Net::HTTP.get(url)
    data = JSON.parse(response)

    gender = data["results"][0]["gender"]
    #  first_name
    first_name = data["results"][0]["name"]["first"]
    #  last_name
    last_name = data["results"][0]["name"]["last"]
    # age
    age = data["results"][0]["dob"]["age"]
    #  email
    email = "#{first_name.downcase}.#{last_name.downcase}@lewagon.fr"

   email = I18n.transliterate(email).gsub(/\s+/, "")
    p email
    #  password
    password = "lewagon"
    #  job_title
    job_list_male = ['Développeur Web', "Infirmier à domicile", "Coiffeur", "Coach Sportif", "Sophrologue", "Dresseur", "Professeur particulier d'Anglais"]
    job_list_female = ['Développeuse Web', "Infirmière à domicile", "Coiffeuse", "Coach Sportif", "Sophrologue", "Dresseuse", "Professeure Particulière d'Anglais"]
    if gender == 'male'
      job_title = job_list_male.sample
    else
      job_title = job_list_female.sample
    end

    #profile picture
    picture_url = data["results"][0]["picture"]["medium"]

    #creation de l'user

    user = User.create!({first_name: first_name, last_name: last_name, age: age, email: email,
      password: password, job_title: job_title, picture_url: picture_url })

      puts ('avant diploma')

    #creation d'un diplôme

    diploma = Diploma.create!(user: user, start_time: "01-09-2022", end_time: "02-02-2023", title: "Licence", description: "Formation approfondie sur les techniques et méthodes actuelles.")

    #creation de deux experiences
    puts ('avant experience')
    experience1 = Experience.create!(user: user, start_time: "01-07-2015", end_time: "30-06-2017", title: "#{job_title} junior", description: "J'ai évolué en tant que #{job_title} junior. Cette expérience m'a apportée les connaissances nécessaires pour me lancer à mon compte.")
    experience2 = Experience.create!(user: user, start_time: experience1[:end_time], end_time: "still active", title: "#{job_title} salarié", description: "Je me suis lancé comme #{job_title} il y a 6ans. Je gère une vaste clientèle en utilisant des techniques actuelles et m'assure de leur entière satisfaction.")

    #salaire
    salary = rand(100..500)

    #génération durée aléatoire
    start_date = Date.today
    end_date = (Date.today + 14).to_time.to_i
    random_date_1 = Time.at(rand(start_date.to_time.to_i..end_date)).to_date

    start_date = random_date_1.to_time.to_i
    end_date = (Date.today + 30).to_time.to_i
    random_date_2 = Time.at(rand(start_date..end_date)).to_date
    puts ( "voila la date #{random_date_2}")

    # address_hash = data["results"][0]["location"]
    # address = "#{address_hash["street"]["number"]}, #{address_hash["street"]["name"]}, #{address_hash["city"]}, #{address_hash["postcode"]}, France"

    address = address_hash = data["results"][0]["location"]["city"]

    description_array = ["Je suis #{job_title.downcase} et je recherche un remplaçant pour gérer mon activité pendant que je prends une pause prolongée. Le candidat idéal doit être expérimenté, compétent et capable de travailler de manière autonome. Si vous êtes intéressés, veuillez me contacter avec votre CV.",
      "Je suis à la recherche d'un travailleur indépendant pour me remplacer pendant que je travaille sur un projet spécifique. Le candidat retenu sera responsable de gérer ma clientèle et de fournir des services de qualité. Si vous êtes intéressés, veuillez m'envoyer votre CV.",
      "Je suis un travailleur indépendant et je recherche un remplaçant pour m'aider à gérer un surcroît d'activité. Le candidat idéal doit être capable de travailler de manière indépendante, de fournir des services de qualité et de maintenir une communication claire avec mes clients. Si vous êtes intéressés, veuillez m'envoyer votre CV.",
      "Je suis à la recherche d'un travailleur indépendant pour me remplacer pendant que je prends un congé de maladie. Le candidat retenu sera responsable de gérer mes clients et de fournir des services de qualité. Si vous êtes intéressé, veuillez me contacter avec votre CV.",
      "Cherche remplaçant pour pouvoir suivre une formation",
      "je recherche un remplaçant pour me remplacer pendant que je prends un congé sabbatique. Le candidat idéal doit être autonome, compétent et capable de travailler de manière indépendante.",
      "Je suis à la recherche d'un travailleur indépendant pour me remplacer pendant que je suis en congé annuel. Le candidat retenu sera responsable de gérer mes clients et de fournir des services de qualité. Si vous êtes intéressés, veuillez me contacter avec votre CV.",
      "Je suis #{job_title.downcase} et je recherche un remplaçant pour gérer mon activité pendant que je suis absent pour des raisons personnelles. Le candidat idéal doit être expérimenté, compétent et capable de travailler de manière indépendante. Si vous êtes intéressés, veuillez m'envoyer votre CV.",
      "Je suis à la recherche d'un travailleur indépendant pour me remplacer pendant que je travaille sur un projet à long terme."
]

      description = description_array.sample

    offer1 = Offer.create!({ user_id: user.id, job_title: job_title, description: description,
                            salary: salary, start_time: random_date_1, end_time: random_date_2, address: address })

  end
