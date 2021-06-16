Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '(:locale)', locale: /es|en/ do
    get 'home/grettings'
    namespace :v1, defaults: { format: 'json'} do
      resources :users, only: %i[create] do
        post 'login', on: :collection
        # resources :stores, only: %i[show]
      end

      resources :stores, only: %i[show]

    end
  end

end
