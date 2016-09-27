class CardsController < ApplicationController

  before_action :authenticate_user!

  def index
    @cards = Card.all.order("created_at DESC")
  end

  def create
    @customer = Customer.find(params[:customer_id])
    @customer.cards.create card_params
    redirect_to "/dashboard", notice: "The card was successfully added."
  end

  def new
    @customer = Customer.find(params[:customer_id])
    @card = Card.new
    @all_categories = current_company.categories
    render 'cards/new'
  end

  def update
    @card = Card.find(params[:id])
    if @card.update_attributes(card_params)
      redirect_to dashboard_path
    else
      redirect_to :back, alert: @card.errors
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to dashboard_path
  end

  def show
    @card = Card.find(params[:id])
    @customer = @card.customer
  end

  private

  def card_params
    params.require(:card).permit(
      :category_id,
      :customer_id
    )
  end
end
