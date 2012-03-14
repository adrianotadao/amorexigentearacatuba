class PagesController < ApplicationController
  def index
    @institutional = Institutional.first.body
    @partners = Partner.actives.random.all
    @pictures = AlbumPicture.all + EventPicture.all
  end
end
