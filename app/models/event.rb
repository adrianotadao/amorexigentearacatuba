class Event < ActiveRecord::Base
  #relationship
  
  has_many :pictures, :as => :attachable, :dependent => :destroy, :class_name => "EventPicture"
  accepts_nested_attributes_for :pictures, :allow_destroy => true
  
  #scopes
  scope :by_name, :order => :name
  scope :actives, :conditions => { :active => true }

  #validations
  validates_presence_of :name

  has_friendly_id :name, :use_slug => true, :approximate_ascii => true

  #others
  def status
    active ? "Ativo" : "Inativo"
  end  
  
end
