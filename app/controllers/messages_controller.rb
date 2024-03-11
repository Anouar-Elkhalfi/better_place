class MessagesController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @message = Message.new(message_params)
    @message.project = @project
    @message.user = current_user
    authorize @message

    if @message.save
      ProjectChannel.broadcast_to(
        @project,
        render_to_string(partial: "message", locals: {message: @message})
      )
        redirect_to project_path(@project)

    else
      render "projects/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
