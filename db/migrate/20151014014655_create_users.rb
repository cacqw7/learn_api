class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :avatar_url
      t.string :github_url
      t.string :name
      t.string :company
      t.string :location
      t.string :email
      t.text :bio
      t.string :code
      t.timestamps
    end
  end
end
