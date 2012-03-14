class Partner < ActiveRecord::Base
  #relationship
  has_one :logo, :as => :attachable, :class_name => "PartnerPicture"
  accepts_nested_attributes_for :logo
  
  #scopes
  scope :by_name, :order => :name
  scope :actives, :conditions => { :active => true }
  scope :random, :order => "RAND()"
  
  has_friendly_id :name, :use_slug => true, :approximate_ascii => true
  
  #validations
  validates_presence_of :name
  validates_uniqueness_of :name
  
  #others
  def status
    active ? "Ativo" : "Inativo"
  end
end