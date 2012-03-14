class Project < ActiveRecord::Base
  #scopes
  scope :by_name, :order => :name
  scope :actives, :conditions => { :active => true }
  
  has_friendly_id :name, :use_slug => true, :approximate_ascii => true
  
  #validations
  validates_presence_of :name
  
  #others
  def status
    active ? "Ativo" : "Inativo"
  end
end