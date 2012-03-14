class CreateAlbums < ActiveRecord::Migration
  def self.up
    create_table :albums do |t|
      t.boolean :active
      t.string :name
      t.string :description
      t.string :cached_slug
      t.timestamps
    end
    add_index :albums, :cached_slug
  end

  def self.down
    drop_table :albums
  end
end
