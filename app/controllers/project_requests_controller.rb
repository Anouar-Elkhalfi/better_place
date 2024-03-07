class ProjectRequestsController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
      # Create a new Project_request associated with the current project
      @project_request = @project.project_requests.new(status: "pending", user: current_user)
      authorize @project_request

    if @project_request.save
      # Handle successful creation
      flash[:success] = 'Project request created successfully!'
      redirect_to dashboard_path
    else
      # Handle validation errors or other issues
      flash[:error] = 'Failed to create project request.'
      puts "Errors: #{@project_request.errors.full_messages}"
      redirect_to @project
    end
  end
end
