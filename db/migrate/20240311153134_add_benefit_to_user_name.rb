class AddBenefitToUserName < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :benefit, :string
  end
end
