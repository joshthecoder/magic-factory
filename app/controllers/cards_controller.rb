class CardsController < ApplicationController
  def index
  end

  def show
    @card = Card.find(params[:id])
  end

  def search
    @query = params[:q]
    @cards = Card.search(params[:q]).records
    render :index
  end
end
