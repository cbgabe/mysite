Rails.application.routes.draw do

  root 'contacts#new'

  post 'contacts_us' => 'contacts#create', :as => 'contacts'

end
