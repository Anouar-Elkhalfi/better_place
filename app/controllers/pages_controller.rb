class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def dashboard
    @project = Project.new
    @projects = current_user.projects
  end
end
