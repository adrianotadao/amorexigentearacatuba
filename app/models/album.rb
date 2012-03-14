class Album < ActiveRecord::Base
  #relationship
  has_many :pictures, :class_name => "AlbumPicture", :as => :attachable, :dependent => :destroy
  accepts_nested_attributes_for :pictures, :allow_destroy => true
  
  #scopes
  scope :by_name, :order => :name
  scope :actives, :conditions => { :active => true }
  
  has_friendly_id :name, :use_slug => true, :approximate_ascii => true
  
  #validations
  validates_presence_of :name
  validates_uniqueness_of :name
  
  #others
  def status
    active ? "Ativo" : "Inativo"
  end
  
end