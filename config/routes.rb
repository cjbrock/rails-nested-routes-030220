Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sushis do 
    resources :ingredients, only: [:index, :show, :new, :create]
  end

  resources :ingredients

  # get '/ingredients', to: "ingredients#index"
  # get '/sushis/:sushi_id/ingredients', to: "ingredients#index"

  # get '/ingredients/:id', to: "ingredients#show", as: "ingredient"
  # get '/sushis/:sushi_id/ingredients/:id', to: "ingredients#show", as: "sushi_ingredient"


  get '/', to: "sushis#home"
  get '/:anything', to: "application#wrong_page"
end
