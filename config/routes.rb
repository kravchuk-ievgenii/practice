Practice::Application.routes.draw do
 resources :users do
   resources :posts
 end
end
