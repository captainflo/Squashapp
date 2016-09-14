class CustomersController < ApplicationController

  before_action :authenticate_user!

  def create
    current_company.customers.create customer_params
    redirect_to "/dashboard"
  end

  def new
    @customer = Customer.new
    render 'customers/new'
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(customer_params)
      redirect_to dashboard_path
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to dashboard_path
  end

  def show
    @customer = Customer.find(params[:id])
    @cards = @customer.cards
    @comments = @customer.comments
    @comment = Comment.new


  end

  private

  def customer_params
    params.require(:customer).permit(
      :firstname,
      :lastname,
      :tel,
      :address,
      :email,
      :avatar,
      :card_id,

    )
  end
end
