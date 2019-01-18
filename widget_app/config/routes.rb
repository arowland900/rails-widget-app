Rails.application.routes.draw do
  
  root to: "widgets#index"

  get "widgets/" => "widgets#index"
	get "widgets/new" => "widgets#new", as: :new_widget
	get "widgets/:id" => "widgets#show", as: :widget
	post "widgets/" => "widgets#create"
	get "widgets/:id/edit" => "widgets#edit", as: :edit_widget
	patch "widgets/:id" => "widgets#update"
	delete "widgets/:id" => "widgets#destroy"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
