class Api::V1::ListsController < Api::V1::ApiController


  def index
    @items = Item.all.order(:created_at)

    render json: @items
  end

  def update
  end

  def create
  end

  def drop
  end

end
