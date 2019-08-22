Rails.application.routes.draw do
  # get 'home/index' => 'home#index'
	# get 'posts/new' => 'posts#new'
	root 'posts#index'

  # resources :posts, :only => :index
  resources :posts #do
		# get :likes
		
	# 	collection do
	# 		get :create_many
	# 	end

	# 	get :create_many, on: :collection

	# 	member do
	# 		get :create_many
	# 	end
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
