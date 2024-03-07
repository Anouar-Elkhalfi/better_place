class RemoveReviewFromProjectRequest < ActiveRecord::Migration[7.1]
  def change
    remove_column :project_requests, :review_id
    add_index :reviews, :project_request_id
  end
end
