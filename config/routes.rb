Rails.application.routes.draw do
  get 'employees/index'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'
  
  get 'static_pages/contact'

  get 'static_pages/register' 

  get 'static_pages/login'

  get 'static_page/logout'

  resources :employees

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
