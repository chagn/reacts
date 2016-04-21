Rails.application.routes.draw do
  root 'comments#index'

  resources :home do
    collection do 
      #get 'hello_world'
    end
  end
  resources :comments

end
