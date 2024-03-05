class CreateProjectRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :project_requests do |t|
      t.string :status
      t.references :review, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :estimate, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
