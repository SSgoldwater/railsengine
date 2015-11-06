class Api::V1::MerchantsController < ApplicationController
  respond_to :json, :xml

  def index
    respond_with Merchant.all
  end

  def show
    respond_with Merchant.find(params[:id])
  end
  
  def find
    respond_with Merchant.find_by(merchant_params)
  end

  def find_all
    respond_with Merchant.where(merchant_params)
  end
  
  def random
    respond_with Merchant.random
  end

  def items
    respond_with Item.where(merchant_params)
  end

  def invoices
    respond_with Invoice.where(merchant_params)
  end
  
  def most_revenue
    binding.pry

    respond_with: InvoiceItem.order('unit_price * quantity DESC').first(params["quantity"])
  end

  private

  def merchant_params
    params.permit(:id, :name, :quantity)
  end

end
