class Api::V1::InvoiceItemsController < ApplicationController
  respond_to :json, :xml

  def index
    respond_with InvoiceItem.all
  end

  def show 
    respond_with InvoiceItems.find(params[:id])
  end

  def find
    respond_with InvoiceItem.find_by(invoice_item_params)
  end
  
  private

  def invoice_item_params
    params.permit(:id, :item_id, :invoice_id, :quantity, :unit_price)
  end

end
