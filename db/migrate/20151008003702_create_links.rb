class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :url
      t.text :description
      t.string :thumbnail_url

      t.timestamps
    end
  end
end
