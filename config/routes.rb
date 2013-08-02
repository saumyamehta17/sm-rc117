SmRc115::Application.routes.draw do
  



  # get "/about" , to: "info#about"

  # get "info/privacy"

  # get "info/license"

  resources :products

  %w[privacy license].each do |page|
    get page, controller: "info", action: page

  end

  resources :pages, except: ['show','update']
  get ':id' , to: "pages#show", as: :page
  put ':id', to: "pages#update", as: :page


  
  root :to => 'products#index'

 
end
