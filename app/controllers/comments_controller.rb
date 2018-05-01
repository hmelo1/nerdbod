require 'pry'
class CommentsController < ApplicationController
  before_action :authenticate_user!
  def new
    @comment = Comment.new
    @plan = Plan.find(params[:plan_id])
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.plan_id = get_plan_id
    @comment.user_id = current_user.id
    if @comment.save!
      redirect_to plan_url(@comment.plan_id), notice: 'Successfully Commented!'
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end

  def get_plan_id
    params.require(:plan_id)
  end
end
