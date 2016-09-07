class CategoriesController < ApplicationController

  before_action :authenticate_user!

  def index
    @categories = Category.all.order("created_at DESC")
  end

  def create
  current_company.categories.create category_params
    redirect_to "/dashboard"
  end

  def new
    @category = Category.new
    render 'categories/new'
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      redirect_to dashboard_path
    else
      redirect_to :back, alert: @category.errors
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to dashboard_path
  end

  def show
    @category = Category.find(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(
      :name,
      :code,
      :price

    )
  end
end
