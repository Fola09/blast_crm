Blast::Core::Engine.routes.draw do
    devise_for :users, class_name: "Blast::User", module: :devise
    root to: 'dashboard#index'
    namespace :admin do
      get '/' => 'admin#index'
      resources :users, only: :index
    end
end
