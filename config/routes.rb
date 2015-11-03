Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :customers, except: [:new, :edit] do
	collection do
	  get "find"
	end
      end

      resources :invoices, except: [:new, :edit]
      resources :invoice_items, except: [:new, :edit]
      resources :items, except: [:new, :edit]
      resources :merchants, except: [:new, :edit]
      resources :transactions, except: [:new, :edit]
    end
  end
end
