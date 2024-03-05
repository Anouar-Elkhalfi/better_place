class Addreference < ActiveRecord::Migration[7.1]
  def change
    add_reference :estimates, :user, foreign_key: true
  end
end
