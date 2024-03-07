class ChangeAssociationBetweenProjectRequestAndReview < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :project_requests, column: :review_id
    add_column :reviews, :project_request_id, :integer, null: false
  end
end
