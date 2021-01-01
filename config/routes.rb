Rails.application.routes.draw do
  	get '/', to: 'main#index'
	post '/create', to: 'main#create'
	post '/edit', to: 'main#edit'
	post '/update', to: 'main#update'
	post '/delete', to: 'main#delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
