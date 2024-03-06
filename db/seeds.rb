require 'faker'

Work.delete_all
User.where(role: 'artisan').delete_all

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

# Définissez un hash associant les skills aux listes de noms d'entreprises
skills_to_company_names = {
  "plafond" => ["Artisanat du Plafond", "Isolation Experts", "Plafonds Innovants", "Plafond & Co", "Plafond Pro"],
  "chauffage" => ["Chauffage Confort", "Énergie Thermique", "Pro Chauffage", "Chauffage Excellence", "Chauffage Solutions"],
  "portes et fenêtres" => ["Fenêtres Excellence", "Portes & Fenêtres Pros", "Menuiserie Innovante", "Fenêtres et Plus", "Fenêtres Pro"],
  "mur" => ["Isolation Murale Pro", "Maçonnerie & Isolation", "Murs Isolants", "Isolation Murale Solutions", "Mur & Co"],
  "plancher bas" => ["Plancher Bas Solutions", "Isolation Plancher Experts", "Pro Plancher", "Plancher Confort", "Isolation Sous-Plancher"],
  "eau chaude sanitaire" => ["Chauffe-Eau Experts", "Eau Chaude Confort", "Sanitaire Pro", "Chauffe-Eau Solutions", "Eau Chaude Excellence"],
  "ventilation" => ["Ventilation Performante", "Vents Innovateurs", "Pro Ventilation", "Ventilation Excellence", "Ventilation Solutions"]
}

artisan_skills = ["plafond", "chauffage", "portes et fenêtres", "mur", "plancher bas", "eau chaude sanitaire", "ventilation"]

artisan_skills.each do |skill|
  skill = skills_to_company_names.keys.sample
  custom_company_name = skills_to_company_names[skill].sample

  user = User.create!(
    email: Faker::Internet.unique.email,
    password: 'password',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    role: 'artisan',
    company_name: custom_company_name,
    skill: skill
  )

  puts "Created artisan user with skill: #{skill}, email: #{user.email}"
end
