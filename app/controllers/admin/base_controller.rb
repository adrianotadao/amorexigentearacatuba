class Admin::BaseController < ApplicationController
  layout "/layouts/admin"
  #before_filter :authenticate_user!

  protected
    def render_404
      respond_to do |type|
        type.html { render '/errors/404', :layout => '/layouts/admin', :status => "404 Not Found" }
        type.all  { render :nothing => true, :status => "404 Not Found" }
      end
    end

    def render_500
      respond_to do |type|
        type.html { render '/errors/500', :layout => '/layouts/admin', :status => "500 Error" }
        type.all  { render :nothing => true, :status => "500 Error" }
      end
    end
end