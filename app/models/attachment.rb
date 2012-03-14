class Attachment < ActiveRecord::Base 
  # associations and scopes
  belongs_to :attachable, :polymorphic => true
  accepts_nested_attributes_for :attachable, :allow_destroy => true
end