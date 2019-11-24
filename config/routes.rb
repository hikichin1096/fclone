Rails.application.routes.draw do
  get 'facclones/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/facclones', to: 'facclones#index' #追記する
end
