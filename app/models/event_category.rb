class EventCategory < ActiveRecord::Base
  #relationship
  has_many :events
  
  #validations
  validates_presence_of :name
  validates_uniqueness_of :name
  
  #scopes
  scope :by_name, :order => :name
  scope :actives, :conditions => { :active => true }
  
  has_friendly_id :name, :use_slug => true, :approximate_ascii => true  

  #others
  def status
    active ? "Ativo" : "Inativo"
  end
end
