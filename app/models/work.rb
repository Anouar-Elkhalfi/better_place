class Work < ApplicationRecord
  has_many :project_works

  EMOJIS = {
    "plafond" => "🏠",
    # "plafond" => asset_path("home.png"),
    "chauffage" => "🪵",
    "portes et fenêtres" => "🪟",
    "mur" => "🧱",
    "plancher bas" => "🏾",
    "eau chaude sanitaire" => "💧",
    "ventilation" => "💨",
  }
end


# IMAGEPROJECT = {
#   "plafond" => ActionController::Base.helpers.asset_path("plafond.png"),
#   "chauffage" => ActionController::Base.helpers.asset_path("chauffage.png"),
#   "portes et fenêtres" => ActionController::Base.helpers.asset_path("fenetre.png"),
#   "mur" => ActionController::Base.helpers.asset_path("mur.png"),
#   "plancher bas" => ActionController::Base.helpers.asset_path("plancher.png"),
#   "eau chaude sanitaire" => ActionController::Base.helpers.asset_path("sanitaire.png"),
#   "ventilation" => ActionController::Base.helpers.asset_path("ventilation.png"),
# }
