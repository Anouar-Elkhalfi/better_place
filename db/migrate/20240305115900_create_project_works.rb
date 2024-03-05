class CreateProjectWorks < ActiveRecord::Migration[7.1]
  def change
    create_table :project_works do |t|
      t.references :work, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
