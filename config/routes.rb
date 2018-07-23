Rails.application.routes.draw do
	devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
	root "pages#index"
	get '/pages/show', to: 'pages#show'
	get '/howto', to: 'pages#howto'
	get '/about', to: 'pages#about'
	resources :users
	resources :posts
	get 'inquiry' => 'inquiry#index'              # 入力画面
	post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
	post 'inquiry/thanks' => 'inquiry#thanks'
	get 'contact', to: 'inquiry#contact'
	get 'function', to: 'pages#function'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
