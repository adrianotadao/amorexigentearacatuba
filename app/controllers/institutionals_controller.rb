class InstitutionalsController < ApplicationController
  def index
    @institutional = Institutional.first.body
    @partners = Partner.actives.random.all
  end
  
  def principles
    @principles = Institutional.first.principles
  end
end
