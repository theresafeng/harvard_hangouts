HarvardHangouts::Application.routes.draw do

  # use devise gem
  devise_for :users

  # hangouts resource route with comments sub-resource
  resources :hangouts do
    resources :comments
  end
  
  # redirect to welcome page
  root :to => 'welcome#index'
  
  # set up page forks properly
  match '/work' => 'welcome#work'
  match '/sessions' => 'welcome#sessions'
  match '/parties' => 'welcome#parties'
  match '/other' => 'welcome#other'
  match '/about' => 'welcome#about'
  match '/users/:id' => 'welcome#users', :as => :user_profile
end
