class Api::V1::ItemsController < ApplicationController
  respond_to :json, :xml

  def index
    respond_with Item.all
  end

  def show 
    respond_with Item.find(params[:id])
  end

  def find
    respond_with Item.find_by(item_params)
  end

  def find_all
    respond_with Item.where(item_params)
  end
  
  def random
    respond_with Item.random
  end

  def invoice_items
    respond_with InvoiceItem.where(item_params)
  end

  def merchant
    respond_with Merchant.joins(:items).find_by(items: { id: params["item_id"] })
  end
  
  private

  def item_params
    params.permit(:id, :item_id, :name, :description, :unit_price, :merchant_id)
  end

end
