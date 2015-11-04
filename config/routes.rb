Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1, defaults: { format: :json } do

      resources :customers, except: [:new, :edit] do
	collection do
	  get "find"
	  get "find_all"
	  get "random"
	end
      end

      resources :invoices, except: [:new, :edit] do
	collection do
	  get "find"
	  get "find_all"
	  get "random"
	end
      end
        
      resources :invoice_items, except: [:new, :edit] do
	collection do
	  get "find"
	  get "find_all"
	  get "random"
	end
      end

      resources :items, except: [:new, :edit] do
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
	end
      end

      resources :transactions, except: [:new, :edit] do
        collection do
	  get "find" 
	  get "find_all" 
	  get "random"
	end
      end

    end
  end
end
