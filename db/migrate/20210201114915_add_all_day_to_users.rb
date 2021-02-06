class AddAllDayToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :all_day, :boolean
  end
end
