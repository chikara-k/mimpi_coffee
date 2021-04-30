Rails.application.routes.draw do
# 管理者側
  devise_for :admins, controllers: {
  	sessions: 'admins/sessions'
  }
  
  devise_scope :admins do
  get 'admins/sign_in' => 'admins/sessions#create'
	get 'admins/sign_out' => 'admins/sessions#destroy'
  end


  namespace :admin do
    root to: 'homes#top'
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
  end
  

# ユーザー側
  devise_for :customers, controllers: {
  	sessions: 'customers/sessions',
  	passwords: 'customers/passwords',
  	registrations: 'customers/registrations'
  }
  
  devise_scope :customers do
	get 'customers/sign_in' => 'customers/sessions#create'
	get 'customers/sign_out' => 'customers/sessions#destroy'
  end
  
  
  root to: 'homes#top'
end
