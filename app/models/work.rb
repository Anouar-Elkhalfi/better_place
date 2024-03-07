class Work < ApplicationRecord
  has_many :project_works
  EMOJIS = {
    "plafond" => "🏠",
    "chauffage" => "🪵",
    "portes et fenêtres" => "🪟",
    "mur" => "🧱",
    "plancher bas" => "🏾",
    "eau chaude sanitaire" => "💧",
    "ventilation" => "💨",
  }
end
