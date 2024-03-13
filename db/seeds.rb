require 'faker'

ProjectWork.destroy_all
Work.destroy_all
ProjectRequest.destroy_all
User.where(role: 'artisan').destroy_all

Work.create!(
  name: "plafond",
  description:"isolation des plafonds par l'extérieur.",
  recommanded_performance: "R > 7,5 m2.K/W",
  image_url: "plafond.png"
)

Work.create!(
  name: "chauffage",
  description: "mettre à jour le système d'intermittence / régulation.",
  recommanded_performance: "",
  image_url: "chauffage.png"
)

Work.create!(
  name: "portes et fenêtres",
  description: "remplacer les fenêtres par des fenêtres double vitrage à isolation renforcée",
  recommanded_performance: "Uw = 1,3 W/m2.K, Sw = 0,42",
  image_url: "fenêtres.png"
)

Work.create!(
  name: "mur",
  description: "isolation des mûrs par l'intérieur.",
  recommanded_performance: "R > 4,5 m2.K/W",
  image_url: "mur.png"
)

Work.create!(
  name: "plancher bas",
  description: "isolation du plancher bas en sous-face.",
  recommanded_performance: "",
  image_url: "plancher.png"
)


Work.create!(
  name: "eau chaude sanitaire",
  description: "changer le chauffe-eau",
  recommanded_performance: "",
  image_url: "sanitaire.png"
)

Work.create!(
  name: "ventilation",
  description: "installer une VMC hygroréglable type B",
  recommanded_performance: "",
  image_url: "ventilation.png"
)



user = User.create!(
  image: "",
  company_name: "",
  first_name: "Pedro",
  last_name: "Pinto",
  address: "1 villa cendrier 93400 Saint-Ouen",
  phone_number: "",
  role: '',
  skill: "",
  benefit: "",
  email: "pedro@test.com",
  password: '12345678',
)
file = URI.open("https://kitt.lewagon.com/placeholder/users/Pedrog75")
user.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")



# Les artisans


user = User.create!(
  image: "https://plus.unsplash.com/premium_photo-1683140667565-c6bca7b1a48d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  company_name: "Les Moulures Kevin !",
  first_name: "Ines",
  last_name: "Reg",
  address: "10 Rue de la Paix, 75002 Paris",
  phone_number: "01 56 78 90 12",
  role: 'artisan',
  skill: "plafond",
  benefit: "Maîtrise des techniques d'isolation phonique",
  email: "plafond1@test.com",
  password: 'azertyui',
)
file = URI.open("https://kitt.lewagon.com/placeholder/users/dadopiece")
user.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")




  user = User.create!(
    image: "https://images.unsplash.com/photo-1482731215275-a1f151646268?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGxhZm9uZHxlbnwwfHwwfHx8MA%3D%3D",
    company_name: "Le Plat fond",
    first_name: "Alain",
    last_name: "Dupont",
    address: "23 Avenue des Champs-Élysées, 75008 Paris",
    phone_number: "01 45 67 89 01",
    role: 'artisan',
    skill: "plafond",
    benefit: "Réparation des fissures et des dommages",
    email: "plafond2@test.com",
    password: 'azertyui',
  )
  file = URI.open("https://kitt.lewagon.com/placeholder/users/achillllllllle")
  user.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")



  user = User.create!(
    image: "https://images.unsplash.com/photo-1607472586893-edb57bdc0e39?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGNoYXVmZmFnZXxlbnwwfHwwfHx8MA%3D%3D",
    company_name: "Le Col Roulé",
    first_name: "Sophie",
    last_name: "Martin",
    address: "5 Rue du Faubourg Saint-Honoré, 75008 Paris",
    phone_number: "01 34 56 78 90",
    role: 'artisan',
    skill: "chauffage",
    benefit: "Utilisation de matériaux écologiques",
    email: "chauffage1@test.com",
    password: 'azertyui',
  )

  file = URI.open("https://kitt.lewagon.com/placeholder/users/constance-lsf")
  user.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

  user = User.create!(
    image: "https://images.unsplash.com/photo-1615238168944-6ed817aeb4ae?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGNoYXVmZmFnZXxlbnwwfHwwfHx8MA%3D%3D",
    company_name: "Mon Chou-fage !",
    first_name: "Antoine",
    last_name: "Lefèvre",
    address: "14 Quai de la Tournelle, 75005 Paris",
    phone_number: "01 23 45 67 89",
    role: 'artisan',
    skill: "chauffage",
    benefit: "Respect strict des délais",
    email: "chauffage2@test.com",
    password: 'azertyui',
  )
  file = URI.open("https://kitt.lewagon.com/placeholder/users/BrunoDeFrias")
  user.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")


  user = User.create!(
    image: "https://plus.unsplash.com/premium_photo-1681824506412-50cd4150e6d0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cG9ydGVzJTIwZXQlMjBmZW4lQzMlQUF0cmVzJTIwdHJhdmF1eHxlbnwwfHwwfHx8MA%3D%3D",
    company_name: "Porte par la fenêtre",
    first_name: "Charlotte",
    last_name: "Dumas",
    address: "32 Rue de la Roquette, 75011 Paris",
    phone_number: "01 67 89 01 23",
    role: 'artisan',
    skill: "portes et fenêtres",
    benefit: "Collaboration avec des fournisseurs locaux",
    email: "portes1@test.com",
    password: 'azertyui',
  )

  file = URI.open("https://kitt.lewagon.com/placeholder/users/Gabgab679")
  user.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

  user = User.create!(
    image: "https://images.unsplash.com/photo-1497366754035-f200968a6e72?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydGVzJTIwZXQlMjBmZW4lQzMlQUF0cmVzJTIwdHJhdmF1eHxlbnwwfHwwfHx8MA%3D%3D",
    company_name: "Fenêtres 2000",
    first_name: "Luc",
    last_name: "Girard",
    address: "18 Rue Mouffetard, 75005 Paris",
    phone_number: "01 56 78 90 12",
    role: 'artisan',
    skill: "portes et fenêtres",
    benefit: "5 ans suivi post-chantier",
    email: "portes2@test.com",
    password: 'azertyui',
  )

  file = URI.open("https://kitt.lewagon.com/placeholder/users/AntoineD75")
  user.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

  user = User.create!(
    image: "https://plus.unsplash.com/premium_photo-1683120912204-c16b67c17008?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bXVycyUyMGNoYW50aWVyfGVufDB8fDB8fHww",
    company_name: "Le Dos au Mur",
    first_name: "Émilie",
    last_name: "Leroux",
    address: "7 Rue de Rivoli, 75004 Paris",
    phone_number: "01 45 67 89 01",
    role: 'artisan',
    skill: "mur",
    benefit: "Expertise en rénovation éco-responsable",
    email: "mur1@test.com",
    password: 'azertyui',
  )

  file = URI.open("https://kitt.lewagon.com/placeholder/users/Anne-Alois")
  user.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

  user = User.create!(
    image: "https://plus.unsplash.com/premium_photo-1663127394496-e51b145ff547?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bXVycyUyMGNoYW50aWVyfGVufDB8fDB8fHww",
    company_name: "La tête dans le mur",
    first_name: "Vincent",
    last_name: "Beauchamp",
    address: "29 Rue de la Pompe, 75116 Paris",
    phone_number: "01 34 56 78 90",
    role: 'artisan',
    skill: "mur",
    benefit: "Maîtrise des normes de sécurité",
    email: "artisan@test.com",
    password: 'azertyui',
  )

  file = URI.open("https://kitt.lewagon.com/placeholder/users/lakhlifia")
  user.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

  user = User.create!(
    image: "https://images.unsplash.com/photo-1503387762-592deb58ef4e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGxhbmNoZXIlMjBjaGFudGllcnxlbnwwfHwwfHx8MA%3D%3D",
    company_name: "La terre est basse",
    first_name: "Céline",
    last_name: "Renaud",
    address: "12 Avenue Montaigne, 75008 Paris",
    phone_number: "01 23 45 67 89",
    role: 'artisan',
    skill: "plancher bas",
    benefit: "Isolation thermique avancée",
    email: "plancher1@test.com",
    password: 'azertyui',
  )

  file = URI.open("https://kitt.lewagon.com/placeholder/users/opheliske")
  user.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

  user = User.create!(
    image: "https://plus.unsplash.com/premium_photo-1682148119915-169e1332362a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGxhbmNoZXIlMjBjaGFudGllcnxlbnwwfHwwfHx8MA%3D%3D",
    company_name: "Look the plancher !",
    first_name: "Alexandre",
    last_name: "Boucher",
    address: "21 Quai Branly, 75007 Paris",
    phone_number: "01 67 89 01 23",
    role: 'artisan',
    skill: "plancher bas",
    benefit: "Expertise en restauration de planchers anciens",
    email: "plancher2@test.com",
    password: 'azertyui',
  )

  file = URI.open("https://kitt.lewagon.com/placeholder/users/IsaiahZalc")
  user.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

  user = User.create!(
    image: "https://plus.unsplash.com/premium_photo-1682125971065-3af13302adcd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Y2hhdWZmZSUyMGVhdXxlbnwwfHwwfHx8MA%3D%3D",
    company_name: "C'est chauuuudd !",
    first_name: "Élise",
    last_name: "Mercier",
    address: "8 Rue de la Grange aux Belles, 75010 Paris",
    phone_number: "01 56 78 90 12",
    role: 'artisan',
    skill: "eau chaude sanitaire",
    benefit: "Intégration de pompes à chaleur",
    email: "eau1@test.com",
    password: 'azertyui',
  )

  file = URI.open("https://kitt.lewagon.com/placeholder/users/kimdnls")
  user.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

  user = User.create!(
    image: "https://images.unsplash.com/photo-1606340671662-27ee685dd111?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hhdWZmZSUyMGVhdXxlbnwwfHwwfHx8MA%3D%3D",
    company_name: "La bonne douche froide !",
    first_name: "Nicolas",
    last_name: "Bertrand",
    address: "17 Rue de la Verrerie, 75004 Paris",
    phone_number: "01 45 67 89 01",
    role: 'artisan',
    skill: "eau chaude sanitaire",
    benefit: "Systèmes de récupération de chaleur",
    email: "eau2@test.com",
    password: 'azertyui',
  )

  file = URI.open("https://kitt.lewagon.com/placeholder/users/axd42")
  user.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

  user = User.create!(
    image: "https://images.unsplash.com/photo-1635604866833-70844856de75?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dmVudGlsYXRpb258ZW58MHx8MHx8fDA%3D",
    company_name: "Snif Snif... C'est qui ?!",
    first_name: "Caroline",
    last_name: "Lavoie",
    address: "45 Rue du Cherche-Midi, 75006 Paris",
    phone_number: "01 34 56 78 90",
    role: 'artisan',
    skill: "ventilation",
    benefit: "Installation de VMC double flux",
    email: "ventilation1@test.com",
    password: 'azertyui',
  )

  file = URI.open("https://kitt.lewagon.com/placeholder/users/ZenaGiulia")
  user.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

  user = User.create!(
    image: "https://images.unsplash.com/photo-1574334292321-4844f63aefef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dmVudGlsYXRpb258ZW58MHx8MHx8fDA%3D",
    company_name: "Le zefffffff !!!",
    first_name: "François",
    last_name: "Morin",
    address: "3 Rue de la Michodière, 75002 Paris",
    phone_number: "01 23 45 67 89",
    role: 'artisan',
    skill: "ventilation",
    benefit: "Connaissance approfondie des filtres HEPA",
    email: "ventilation2@test.com",
    password: 'azertyui',
  )

  file = URI.open("https://kitt.lewagon.com/placeholder/users/stabbianneni")
  user.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
