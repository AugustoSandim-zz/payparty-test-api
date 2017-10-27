class Api::V1::ListsController < Api::V1::ApiController

  def index
    @items = Item.all.order(:created_at)

    render json: @items
  end

  def update
    item = Item.find_by(id: params[:id])
    item.update(update_params)

    @items = Item.all.order(:created_at)

    render json: @items
  end

  def create
    item = Item.create(create_params)
    @items = Item.all.order(:created_at)

    render json: @items
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy

    render json: Item.all.order(:created_at)
  end

  private
    def create_params
      params.permit(:task)
    end

    def update_params
      params.permit(:task, :completed)
    end

end
