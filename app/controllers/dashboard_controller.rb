class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @customers = current_company.customers.order("created_at DESC").page(params[:page]).per(3)
    @users = current_company.users.order("created_at DESC").page(params[:page]).per(4)
    @categories = current_company.categories.order("created_at DESC")
  end
end
