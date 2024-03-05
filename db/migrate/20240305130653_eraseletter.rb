class Eraseletter < ActiveRecord::Migration[7.1]
  def change
    rename_column :estimates, :completioon_date, :completion_date
  end
end
