Rails.application.routes.draw do

	# private /admin
  scope :admin, module: 'admin' do
		resources :leads
		resources :segmentation_conditions 
		resources :segmentations do 
			get '/search', to: 'segmentations#search'
		end
    get :signin,  to: 'signin#index'
    post :authenticate,  to: 'signin#authenticate'

    get '/', to: 'home#index', as: 'admin_index'
  end

  # landing page and lead register
  post :leads, to: 'home#create', as: 'create_lead'
  root to: 'home#index'
end
