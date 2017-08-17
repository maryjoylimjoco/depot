Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  resources :users
  resources :orders
  resources :line_items
  resources :carts
  resources :products

  controller :sessions do
    get     'login'   => :new
    post    'login'   => :create
    delete  'logout'  => :destroy
  end

  scope '(:locale)' do
    resources :orders
    resources :line_items
    resources :carts
    root 'store#index', as: 'store_index', via: :all
  end
end
