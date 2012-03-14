class InstitutionalLogo < Attachment
  # constants and attributes
  has_attached_file :data,
    :styles => {:thumb => "112x100", :medium => "181x136", :big => "330x200"},
    :path => "public/system/institutional_logo/:id/:style_:basename.:extension",
    :url => "/system/institutional_logo/:id/:style_:basename.:extension"    

  #validations
  validates_attachment_content_type :data, :content_type => ['image/jpeg', 'image/png', 'image/gif', 'image/bmp', 'image/jpg']  
end