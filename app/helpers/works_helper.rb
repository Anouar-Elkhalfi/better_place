module WorksHelper
  def image_for_work(work)
    images_mapping = {
      "plafond" => "plafond.png",
      "chauffage" => "chauffage.png",
      "portes et fenêtres" => "fenetre.png",
      "mur" => "mur.png",
      "plancher bas" => "plancher.png",
      "eau chaude sanitaire" => "sanitaire.png",
      "ventilation" => "ventilation.png",
    }

    image_path images_mapping[work.name]
  end
end

def image_for_skill(skill)
  images_mapping = {
    "plafond" => "plafond.png",
    "chauffage" => "chauffage.png",
    "portes et fenêtres" => "fenetre.png",
    "mur" => "mur.png",
    "plancher bas" => "plancher.png",
    "eau chaude sanitaire" => "sanitaire.png",
    "ventilation" => "ventilation.png",
  }

  image_path images_mapping[skill]
end
