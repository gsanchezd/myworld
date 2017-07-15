Rails.application.routes.draw do


  resources :jobs do
    member do
      get 'apply'
    end
    resources :job_applications, as: :applications
  end


  devise_for :employees, controllers: {
    registrations: 'employees/registrations'
  }


  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root to: 'jobs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
