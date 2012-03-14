class Picture < Attachment
  #attributes
  has_attached_file :data,
    :styles => {:thumb => "700x88", :big => "826x103"},
    :path => "public/system/picture/:id/:style_:basename.:extension",
    :url => "/system/picture/:id/:style_:basename.:extension"    

  #validations
  validates_attachment_content_type :data, :content_type => ['image/jpeg', 'image/png', 'image/gif', 'image/bmp']
  
end