Rails.application.routes.draw do
  get 'user/signup'

  get 'user/signin'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
  get 'home/index'

  get '/car_call/status'
  post '/car_call/status'

  post '/register/index'

  post '/user/signup'
  post '/user/signin'
  post '/user/getInfo'
  get '/user/getInfo_get'

  get '/car_call/pushMessage'
  post '/car_call/pushMessage'
  

end
