class CardsController < ApplicationController

  before_action :authenticate_user!

  def index
    @cards = Card.all.order("created_at DESC")
  end

  def create
  current_company.cards.create card_params
    redirect_to "/dashboard"
  end

  def new
    @card = Card.new
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
  end

  private

  def card_params
    params.require(:card).permit(
      :customer_id,
      :category_id

    )
  end
end
