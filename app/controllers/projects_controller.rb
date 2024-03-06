class ProjectsController < ApplicationController
  def show
    skip_authorization
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
    @works = Work.all
    authorize @project
  end

  def create
    skip_authorization
    @project = Project.new(project_params)
    @project.user = current_user

    if @project.save
      redirect_to artisans_project_path(@project)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def artisans
    skip_authorization
    @project = Project.find(params[:id])
  end

  private
  def project_params
    params.require(:project).permit(:title, :description, :location, :budget, :start_date, work_ids: [])
   end

end
