class Api::V1::ItemsController < Api::V1::BaseController
  # skip_before_action :verify_authenticity_token, only: [:update]
  # before_action :find_item, only: [:update]

  def index
    @items = Item.all
  end

  private

  # def find_item
  #  @item = Item.find(params[:id])
  # end
end