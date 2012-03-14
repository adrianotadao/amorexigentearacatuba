class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.boolean :active      
      t.string :name
      t.text :body
      t.date :start_at
      t.date :end_at      
      t.string :cached_slug
      t.timestamps      
    end
    add_index :events, :cached_slug
  end

  def self.down
    drop_table :events
  end
end
