class SearchController < ApplicationController

  def index
    @customers = Customer.where('lastname LIKE ?', "%#{params[:query]}%")

    render 'customers/index'
  end
end
