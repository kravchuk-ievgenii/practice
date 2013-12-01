Practice::Application.routes.draw do

  root 'users#index'

  resources :users do
    get 'perverts', on: :collection
  	get 'love', on: :member

    resources :posts do
      get 'perverts', on: :collection
      get 'stalin', on: :member
    end
  end
end