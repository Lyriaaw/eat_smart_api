Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'



  get 'dishes', to: 'restaurants#menue'

  post 'order', to: 'order#create'

  get 'orders/:restaurant_id', to: 'order#get'


end
