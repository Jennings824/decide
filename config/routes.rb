Rails.application.routes.draw do
# Rails Routing
resources :topics, only: [:new, :create, :show] do
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
resources :topics, to: 'static_pages#index'

resource :home, only: [:show]
root to: "home#show"


namespace :api do
  namespace :v1 do
    resources :topics, only: [:index, :show]
  end
end
# resources :user_topics, only: [:create] do
#   resources :opinions, only: [:new, :create]
# end
#
# devise_for :users, controllers: {
#  sessions: 'users/sessions',
#  passwords: 'users/passwords',
#  registrations: 'users/registrations'
# }

end
