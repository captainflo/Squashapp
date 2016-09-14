class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @customer = Customer.find(params[:customer_id])
    @comment = @customer.comments.create(comment_params)
    @comment.save
    redirect_to @customer
  end

  def destroy
    @customer = Customer.find(params[:customer_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @customer
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(comment_params)
      flash[:success] = "Add commnent success"
      redirect_to customer_path
    else
      render "show"
    end
  end

  def comment_params
    params.require(:comment).permit(
      :comment,
      :customer_id
    )
  end
end
