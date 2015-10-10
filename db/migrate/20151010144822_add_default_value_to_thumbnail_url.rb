class AddDefaultValueToThumbnailUrl < ActiveRecord::Migration
  def up
    change_column :links, :thumbnail_url, :string, :default => "missing.jpg"
  end

  def down
    change_column :links, :thumbnail_url, :string, :default => nil
  end
end
