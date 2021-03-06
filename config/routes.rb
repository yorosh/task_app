Rails.application.routes.draw do
  get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
end
class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :title
      t.string :email
      t.string :memo
      t.datetime :start_date
      t.datetime :last_date

      t.timestamps
    end
  end
end
