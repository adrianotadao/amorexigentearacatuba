class CreateInstitutionals < ActiveRecord::Migration
  def self.up
		create_table :institutionals do |t| 
			t.text :body
			t.text :principles
			t.text :contact		
		end
  end

  def self.down
		drop_table :intitutionals
  end
end
