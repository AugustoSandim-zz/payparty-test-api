class ListsController < ApplicationController
  respond_to :json

  def index
    @items = Item.all.order(:created_at)

    render json: @items
  end
end
