class AlbumPicture < Attachment
  # constants and attributes
  has_attached_file :data,
    :styles => {:thumb => "112x100", :medium => "181x136", :big => "800x600"},
    :path => "public/system/album_picture/:id/:style_:basename.:extension",
    :url => "/system/album_picture/:id/:style_:basename.:extension"    

  #validations
  validates_attachment_content_type :data, :content_type => ['image/jpeg', 'image/png', 'image/gif', 'image/bmp', 'image/jpg']

  #scopes
  scope :random, :order => "RAND()"

end