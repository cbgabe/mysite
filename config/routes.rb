Rails.application.routes.draw do
  resources :quotes, only: [:new, :create]

  root 'contacts#new'

  post 'contacts_us' => 'contacts#create', :as => 'contacts'

end
