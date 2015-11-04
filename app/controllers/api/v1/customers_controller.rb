class Api::V1::CustomersController < ApplicationController
  respond_to :json, :xml

  def index
    respond_with Customer.all
  end

  def show
    respond_with Customer.find(params[:id])
  end

  def find
    respond_with Customer.find_by(customer_params)
  end

  def find_all
    respond_with Customer.where(invoice_params)
  end

  def random
    respond_with Customer.random
  end

  def invoices
    respond_with Invoice.where(customer_params)
  end
  
  def transactions
    respond_with Transaction.joins(:invoice).where(invoices: customer_params)
  end
  
  private

  def customer_params
    params.permit(:customer_id, :first_name, :last_name, :id)
  end
  
end
