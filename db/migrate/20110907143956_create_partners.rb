class CreatePartners < ActiveRecord::Migration
  def self.up
    create_table :partners do |t|
      t.boolean :active      
      t.string :name
      t.string :url  
      t.string :cached_slug
      t.timestamps  
    end
    add_index :partners, :cached_slug
  end

  def self.down
    drop_table :partners
  end
end
