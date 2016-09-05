class DashboardController < ApplicationController

  before_action :authenticate_user!

  def index
    @customers = Customer.all.order("created_at DESC")
  end
end
