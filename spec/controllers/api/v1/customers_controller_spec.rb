require 'rails_helper'

RSpec.describe Api::V1::CustomersController, type: :controller do

  describe "GET /api/v1/customers" do
    before(:each) do 
	@john = create(:customer_john)
	@jane = create(:customer_jane)
    end

      it "exists" do
	get "index", format: :json
	count = JSON.parse(response.body).count
	
	expect(response.status).to eq 200
	expect(count).to eq(2)
      end

      it "returns a json string of customers" do
	get "index", format: :json
        json = JSON.parse(response.body)

	expect(json.first["first_name"]).to eq('Jane')
	expect(json.first["last_name"]).to eq('Doe')
      end
  end

  describe "GET api/v1/customers/:id" do
    before(:each) do 
	@john = create(:customer_john)
    end

    xit "exists" do
      get "show", format: :json, paramaters: { id: 1 }
      json = JSON.parse(response.body)

      expect(json.first["first_name"]).to eq('John')
    end
  end
  
end
