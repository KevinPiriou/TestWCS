Rails.application.routes.draw do
  resources :user
  root 'user#index'
  delete 'destroy_all_user', to: 'user#destroy_all_user'
  post 'make_list',to: 'user#make_list'
  post 'make_complete_list',to: 'user#make_complete_list'
end
