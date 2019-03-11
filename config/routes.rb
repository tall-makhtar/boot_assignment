Rails.application.routes.draw do
  # get 'boot_apps/index'

  # get 'boot_apps/create'

  # get 'boot_apps/edit'

  # get 'boot_apps/update'

  # get 'boot_apps/delete'
  resources :boot_apps
  resources :tops

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
