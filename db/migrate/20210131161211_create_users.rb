class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :title
      t.string :memo
      t.datetime :start_date
      t.datetime :last_date

      t.timestamps
    end
  end
end

