class Api::V1::ItemsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create]
  # before_action :find_item, only: [:update]

  def index
    @items = Item.where(is_default: true)
  end

  def create
    # p "create action"
    @item = Item.new(item_params)
    @item.is_default = false
    @item.save
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end