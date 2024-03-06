# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Work.delete_all

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
  name: "mûr",
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

