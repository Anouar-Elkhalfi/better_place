class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    authorize @project
  end

  def new
    @project = Project.new
    @works = Work.all
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    if @project.save
      redirect_to artisans_project_path(@project)
    else
      render :new, status: :unprocessable_entity
    end

    authorize @project
  end

  def artisans
    @project = Project.find(params[:id])
    authorize @project
    @artisans = User.where(role: 'artisan', skill: @project.works.pluck(:name))
  end
  
  def edit
    @project = Project.find(params[:id])
  end


  def destroy
    skip_authorization
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to dashboard_path
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :location, :budget, :start_date, work_ids: [])
  end
end
