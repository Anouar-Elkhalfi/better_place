class CreateEstimates < ActiveRecord::Migration[7.1]
  def change
    create_table :estimates do |t|
      t.decimal :price
      t.date :completion_date
      t.text :message
      t.references :user, null: false, foreign_key: true
      t.string :file
      t.string :photo

      t.timestamps
    end
  end
end
