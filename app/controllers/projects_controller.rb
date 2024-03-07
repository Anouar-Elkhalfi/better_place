class ProjectsController < ApplicationController
  def show
    authorize @project
    @project = Project.find(params[:id])
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

  private

  def project_params
    params.require(:project).permit(:title, :description, :location, :budget, :start_date, work_ids: [])
  end
end










# Dans le contrôleur associé, vous pouvez créer une méthode create qui gère la création des "Project_requests." Voici un exemple de ce à quoi cela pourrait ressembler dans le contrôleur des "Projects" :

# ruby
# Copy code
# # app/controllers/projects_controller.rb
# class ProjectsController < ApplicationController
#   # ...

#   def create_project_request
#     # Assume params[:project_id] contains the project_id related to the request
#     @project = Project.find(params[:project_id])

#     # You may want to perform additional checks or validations here

#     # Create a new Project_request associated with the current project
#     @project_request = @project.project_requests.build(project_request_params)

#     if @project_request.save
#       # Handle successful creation
#       flash[:success] = 'Project request created successfully!'
#       redirect_to @project
#     else
#       # Handle validation errors or other issues
#       flash[:error] = 'Failed to create project request.'
#       redirect_to @project
#     end
#   end

#   private

#   def project_request_params
#     # Define the permitted parameters for Project_request
#     params.require(:project_request).permit(:review_id, :user_id, :estimate_id, :project_id, :status)
#   end
# end
# Dans ce code :

# La méthode create_project_request récupère le projet associé en utilisant le project_id de la demande.
# Ensuite, elle construit une nouvelle instance de Project_request associée au projet actuel en utilisant la méthode build.
# Les paramètres de la demande sont extraits à partir de params à l'aide de la méthode project_request_params.
# Enfin, la méthode tente de sauvegarder la demande du projet. Si la sauvegarde réussit, l'utilisateur est redirigé vers la page du projet avec un message de succès. Sinon, il est redirigé avec un message d'erreur.
# N'oubliez pas d'ajuster ce code en fonction de la logique spécifique de votre application et des validations nécessaires.





# Is this conversation helpful so far?



# Message ChatGPT…

# ChatGPT can make mistakes. Consider checking important information.
