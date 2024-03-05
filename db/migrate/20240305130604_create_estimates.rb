class CreateEstimates < ActiveRecord::Migration[7.1]
  def change
    create_table :estimates do |t|
      t.integer :price
      t.string :completioon_date
      t.text :message
      t.string :file
      t.string :photo

      t.timestamps
    end
  end
end
