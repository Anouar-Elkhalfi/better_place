class ReviewsController < ApplicationController
  before_action :set_project_request, only: %i[new create]

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.project_request = @project_request
    @review.user = current_user
    authorize @review

    @review.save!
    redirect_to project_path(@project_request.project)
  end

  private

  def set_project_request
    @project_request = ProjectRequest.find(params[:project_request_id])
  end
  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
