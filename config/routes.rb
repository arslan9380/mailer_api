Rails.application.routes.draw do
  namespace :api, constraints: {format: 'json'} do
  	namespace :v1 do
  		resources :jobs
  	end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
