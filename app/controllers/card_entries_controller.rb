class CardEntriesController < ApplicationController

  before_action :authenticate_user!

  def create
    @customer = Customer.find(params[:customer_id])
    @card = @customer.cards.find(params[:card_id])
    @entry = @card.card_entries.create(card_entry_params)

    redirect_to customer_card_path(@customer, @card), notice: "Ajout OK"
  end


  def update
    @customer = Customer.find(params[:customer_id])
    @card = @customer.cards.find(params[:card_id])
    @entry = @card.card_entries.find(params[:id])
    @entry.update_attributes(card_entry_params)

    redirect_to customer_card_path(@customer, @card), notice: "Modification OK"
  end

  private

  def card_entry_params
    params.require(:card_entry).permit(:checked_at, :card_id)
  end
end
