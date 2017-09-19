Rails.application.routes.draw do

resources :topics do
  resource :user_topics
end

 root 'static_pages#index'

 devise_for :users, controllers: {
  sessions: 'users/sessions',
  passwords: 'users/passwords',
  registrations: 'users/registrations'
}

# match 'user_topics' => 'user_topics#create', :via => :create

# root to: redirect('/topics')

# React
  # root to: redirect('/topics')
  # resources :topics, to: 'static_pages#index'
  #
  # namespace :api do
  #   namespace :v1 do
  #     resources :topics
  #   end
  # end

end
