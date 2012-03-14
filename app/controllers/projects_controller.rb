class ProjectsController < ApplicationController
  def index
    @projects = Project.actives.all
    @partners = Partner.actives.random.all
  end
  
  def show
    @project = Project.find params[:id]
  end
end
