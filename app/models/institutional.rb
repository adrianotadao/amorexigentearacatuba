class Institutional < ActiveRecord::Base
  # associations
  has_one :logo, :as => :attachable, :dependent => :destroy, :class_name => "InstitutionalLogo"
  accepts_nested_attributes_for :logo
end