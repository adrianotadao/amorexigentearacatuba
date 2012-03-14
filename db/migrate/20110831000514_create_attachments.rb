class CreateAttachments < ActiveRecord::Migration
  def self.up
    create_table :attachments, :options => 'engine=MyISAM' do |t|
      t.references :attachable, :polymorphic => true
      t.string :type
      t.string :title
      t.string :data_file_name
      t.string :data_content_type
      t.string :data_file_size
      t.timestamps      
    end
    add_index :attachments, :type
    add_index :attachments, [:attachable_type, :attachable_id]  
  end

  def self.down
    drop_table :attachments
  end
end