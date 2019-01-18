Rails.application.routes.draw do
  
  root to: "widgets#index"

  get "/", to: "widgets#index"
  
  get "widgets/" => "widgets#index"
	get "widgets/new" => "widgets#new", as: :new_widget
  get "widgets/:id" => "widgets#show", as: :widget
  post "widgets/" => "widgets#create"
	delete "widgets/:id" => "widgets#destroy"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
