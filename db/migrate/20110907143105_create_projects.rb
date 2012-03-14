class CreateProjects < ActiveRecord::Migration
  def self.up
		create_table :projects do |t|
			t.boolean :active
			t.string :name
			t.text :body
      t.string :cached_slug			
			t.timestamps 
		end
    add_index :projects, :cached_slug
  end

  def self.down
		drop_table :projects
  end
end
