class Admin::AdminsController < Admin::BaseController
  before_filter :authenticate_user!
  
  def index 
  end
end