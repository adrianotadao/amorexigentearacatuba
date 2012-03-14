class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :active, :name, :email, :password, :password_confirmation, :remember_me, :cached_slug
  
  #validations
  validates_presence_of :name
  
  #scopes
  scope :by_name, :order => :name

  has_friendly_id :name, :use_slug => true, :approximate_ascii => true
end