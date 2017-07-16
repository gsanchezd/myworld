Rails.application.routes.draw do


  get 'company/show'

  resources :jobs do
    member do
      get 'apply'
    end
    resources :job_applications, as: :applications
  end

  resources :company
  
  devise_for :employees, controllers: {
    registrations: 'employees/registrations',
    sessions: 'employees/sessions'
  }

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root to: 'jobs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
