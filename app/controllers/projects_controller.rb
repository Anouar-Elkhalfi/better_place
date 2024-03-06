class ProjectsController < ApplicationController
<<<<<<< HEAD
=======
  def new
    @project = Project.new
    @works = Work.all
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @project = ProjectWork.new(project: @project)
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def artisans

  end
  private
  def project_params
    params.require(:project).permit(:title, :description, :location, :budget, :start_date, work_ids: [])
   end

>>>>>>> 5253cf3d0efd24066401f3afe5093a83ad13692c
end
