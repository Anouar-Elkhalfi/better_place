class AddSurfaceAndNombreDePiecesToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :surface, :integer
    add_column :projects, :nombre_de_pieces, :integer
  end
end
