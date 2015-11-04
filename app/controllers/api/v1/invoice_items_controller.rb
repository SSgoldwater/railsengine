class Api::V1::InvoiceItemsController < ApplicationController
  respond_to :json, :xml

  def index
    respond_with InvoiceItem.all
  end

  def show 
    respond_with InvoiceItem.find(params[:id])
  end

  def find
    respond_with InvoiceItem.find_by(invoice_item_params)
  end

  def find_all
    respond_with InvoiceItem.where(invoice_item_params)
  end
  
  def random
    respond_with InvoiceItem.random
  end

  def invoice
    respond_with Invoice.joins(:invoice_items).find_by(invoice_items: { id: params["invoice_item_id"] })
  end

  def item
    respond_with Item.joins(:invoice_items).find_by(invoice_items: { id: params["invoice_item_id"] })
  end
  
  private

  def invoice_item_params
    params.permit(:id, :item_id, :invoice_id, :quantity, :unit_price)
  end

end
