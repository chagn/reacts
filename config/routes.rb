Rails.application.routes.draw do
  resources :home do
    collection do 
      #get 'hello_world'
    end
  end
end
