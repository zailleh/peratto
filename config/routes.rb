Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/login', to: 'users#login'
  post '/login', to: 'users#authenticate'
  get '/logout', to: 'users#logout'
  get '/signup', to: 'users#signup'

  get '/history', to: 'users_vocabularies#history'
  get '/start_lesson', to: 'users_vocabularies#start_lesson'

  get '/lesson', to: 'user_vocabularies#view_card'
  post '/lesson', to: 'user_vocabularies#match_card'

  root :to => "public#index"
end
