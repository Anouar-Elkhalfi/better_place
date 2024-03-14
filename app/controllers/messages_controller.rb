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
        {
          html: render_to_string(partial: "message", locals: {message: @message}),
          author_id: @message.user.id
        }

      )
      head :ok
    else
      render "projects/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
