class ProjectRequestsController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
      # Create a new Project_request associated with the current project
      @project_request = @project.project_requests.new(status: "pending")
      authorize @project_request
    if @project_request.save
      # Handle successful creation
      flash[:success] = 'Project request created successfully!'
      redirect_to @project
    else
      # Handle validation errors or other issues
      flash[:error] = 'Failed to create project request.'
      redirect_to @project
    end
  end
end
# Dans ce code :

# La méthode create récupère le projet associé en utilisant le project_id de la demande.
# Ensuite, elle construit une nouvelle instance de Project_request associée au projet actuel
# Les paramètres de la demande sont extraits à partir de params à l'aide de la méthode project_request_params.
# Enfin, la méthode tente de sauvegarder la demande du projet. Si la sauvegarde réussit, l'utilisateur est redirigé vers la page du projet avec un message de succès. Sinon, il est redirigé avec un message d'erreur.
# N'oubliez pas d'ajuster ce code en fonction de la logique spécifique de votre application et des validations nécessaires.
