Rails.application.routes.draw do
  # admin dashboard for lead administration (fake auth)
	

  # public register of contact lead
  resources :leads, only: [:create]

  root to: 'home#index'
end
