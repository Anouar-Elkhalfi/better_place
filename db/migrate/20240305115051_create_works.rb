class CreateWorks < ActiveRecord::Migration[7.1]
  def change
    create_table :works do |t|
      t.string :name
      t.string :description
      t.string :recommanded_performance
      t.string :image_url

      t.timestamps
    end
  end
end
