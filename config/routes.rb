Rails.application.routes.draw do
  get 'rentals/new'
  get 'rentals/edit'
  get 'rentals/show'
  get 'rentals/index'

  get 'employees/new'
  get 'employees/edit'
  get 'employees/update'
  get 'employees/delete'
  get 'employees/show'
  get 'employees/index'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'
  
  get 'static_pages/contact'

  get 'static_pages/register' 

  get 'static_pages/login'

  get 'static_page/logout'

  resources :employees
  resources :rentals

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
