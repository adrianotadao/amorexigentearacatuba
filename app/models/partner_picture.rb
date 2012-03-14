class PartnerPicture < Attachment
  # constants and attributes
  has_attached_file :data,
    :styles => {:thumb => "80x80", :medium => "181x136"},
    :path => "public/system/partner_picture/:id/:style_:basename.:extension",
    :url => "/system/partner_picture/:id/:style_:basename.:extension"    

  #validations
  validates_attachment_content_type :data, :content_type => ['image/jpeg', 'image/png', 'image/gif', 'image/bmp', 'image/jpg']
end