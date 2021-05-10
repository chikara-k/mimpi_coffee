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
    resources :items
    resources :genres, only: [:index, :edit, :create, :update, :destroy]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:index, :show, :update]
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
  get '/about' => 'homes#about'
  # お問い合わせ
  resources :contacts, only: [:new, :create]
  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
  post 'contacts/back', to: 'contacts#back', as: 'back'
  get 'done', to: 'contacts#done', as: 'done'

  namespace :ec do
    resources :items, only: [:index, :show]
    resources :cart_items, only: [:index, :create, :update, :destroy] do
      collection do
        delete 'empty'
      end
    end
    resources :orders, only: [:index, :new, :show, :create, :update] do
      collection do
        get "confirm"
        get "complete"
      end
    end
  end

end
