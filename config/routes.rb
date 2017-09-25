Rails.application.routes.draw do
# Rails Routing
resources :topics, only: [:new, :create, :index, :show] do
  resource :user_topics, only: [:create]
  resources :opinions, only: [:new, :create, :show]
end

resources :user_topics, only: [:create] do
  resources :opinions, only: [:new, :create, :show]
end
resource :home, only: [:show]
root to: "home#show"

 devise_for :users, controllers: {
  sessions: 'users/sessions',
  passwords: 'users/passwords',
  registrations: 'users/registrations'
}


# React Routing

# devise_for :users, controllers: {
#  sessions: 'users/sessions',
#  passwords: 'users/passwords',
#  registrations: 'users/registrations'
# }
#
# namespace :api do
#   namespace :v1 do
#     resources :topics, only: [:show]
#   end
# end
#
# root to: redirect('/topics')
# resources :topics, only: [:new, :create, :index], to: 'static_pages#index'

end
