Rails.application.routes.draw do
  get 'signup', to: 'employee_signups#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  post 'sessions/create', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  resources :employee_signups
  resources :employees
  resources :employee_details
  resources :employee_attendances
  resources :employee_leaves
 
  root 'sessions#new'
end
