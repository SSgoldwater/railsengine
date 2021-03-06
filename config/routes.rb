Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1, defaults: { format: :json } do

      resources :customers, except: [:new, :edit] do
	get "/invoices", to: "customers#invoices"
	get "/transactions", to: "customers#transactions"
	collection do
	  get "find"
	  get "find_all"
	  get "random"
	end
      end

      resources :invoices, except: [:new, :edit] do
	get "/transactions", to: "invoices#transactions"
	get "/invoice_items", to: "invoices#invoice_items"
	get "/items", to: "invoices#items"
	get "/customer", to: "invoices#customer"
	get "/merchant", to: "invoices#merchant"

	collection do
	  get "find"
	  get "find_all"
	  get "random"
	end
      end
        
      resources :invoice_items, except: [:new, :edit] do
	get "/invoice", to: "invoice_items#invoice"
	get "/item", to: "invoice_items#item"

	collection do
	  get "find"
	  get "find_all"
	  get "random"
	end
      end

      resources :items, except: [:new, :edit] do
	get "/invoice_items", to: "items#invoice_items"
	get "/merchant", to: "items#merchant"

	collection do
	  get "find" 
	  get "find_all"
	  get "random"
	end
      end

      resources :merchants, except: [:new, :edit] do
	get "/items", to: "merchants#items"
	get "/invoices", to: "merchants#invoices"

	collection do
	  get "find" 
	  get "find_all"
	  get "random"
	  get "most_revenue"
	end
      end

      resources :transactions, except: [:new, :edit] do
	get "/invoice", to: "transactions#invoice"

        collection do
	  get "find" 
	  get "find_all" 
	  get "random"
	end
      end

    end
  end
end
