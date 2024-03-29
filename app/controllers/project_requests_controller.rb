class ProjectRequestsController < ApplicationController
  def create

    @project = Project.find(params[:project_id])
      # Create a new Project_request associated with the current project
      #ajoute params artisan afin d associer lartisans au project reques
      @project_request = @project.project_requests.new(status: "pending", user: User.find(params[:artisan_id]))
      authorize @project_request

    if @project_request.save
      # Handle successful creation

      flash[:notice] = "L'artisan a bien été ajouté à votre projet"
      redirect_to artisans_project_path(@project)
    else
      # Handle validation errors or other issues
      flash[:alert] = "L'artisan n'a pas été ajouté à votre projet"
      puts "Errors: #{@project_request.errors.full_messages}"
      redirect_to @project
    end
  end

  def destroy
  end
end
