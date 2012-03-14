class PartnersController < ApplicationController
  def index
    @partners = Partner.actives.all
  end
  
end