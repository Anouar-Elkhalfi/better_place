class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    @project_works = @project.works
    authorize @project

    @message = Message.new
    @artisans = User.joins(:project_requests).where('project_requests.project' => @project)
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
    @project_artisans = User.joins(:project_requests).where('project_requests.project' => @project)
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

  def index
    @projects = Project.all
    @markers = @projects.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :body, :photo, :description, :location, :budget, :start_date, work_ids: [])
  end
end
