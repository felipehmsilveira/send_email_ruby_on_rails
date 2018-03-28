Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #root to: 'controller#method'
  #resources :email, only: [:index, :create]
  #get '/', to: 'controller#method'
  
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
        resources :email, only: [:index, :create]
    end
  end

end
