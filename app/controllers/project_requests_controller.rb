class ProjectRequestsController < ApplicationController
  def create

    @project = Project.find(params[:project_id])
      # Create a new Project_request associated with the current project
      #ajoute params artisan afin d associer lartisans au project reques
      @project_request = @project.project_requests.new(status: "pending", user: User.find(params[:artisan_id]))
      authorize @project_request

    if @project_request.save
      # Handle successful creation
      flash[:notice] = 'Project request created successfully!'
      redirect_to dashboard_path
    else
      # Handle validation errors or other issues
      flash[:alert] = 'Failed to create project request.'
      puts "Errors: #{@project_request.errors.full_messages}"
      redirect_to @project
    end
  end

  def destroy
  end
end
