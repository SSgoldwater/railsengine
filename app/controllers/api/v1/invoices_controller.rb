class Api::V1::InvoicesController < ApplicationController
  respond_to :json, :xml

  def index
    respond_with Invoice.all
  end

  def show 
    respond_with Invoice.find(params[:id])
  end

  def find
    respond_with Invoice.find_by(invoice_params)
  end

  def find_all
    respond_with Invoice.where(invoice_params)
  end
  
  def random
    respond_with Invoice.random
  end

  def transactions
    respond_with Transaction.where(invoice_params)
  end

  def invoice_items
    respond_with InvoiceItem.where(invoice_params)
  end

  def items
    respond_with Item.where(invoice_params)
  end
  
  def customer
    respond_with Customer.joins(:invoices).find_by(invoices: { id: params["invoice_id"]} )
  end

  def merchant
    respond_with Merchant.joins(:invoices).find_by(invoices: { id: params["invoice_id"] })
  end
  
  private

  def invoice_params
    params.permit(:id, :invoice_id, :customer_id, :merchant_id, :status)
  end

end
