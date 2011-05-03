ForeverFamilyFoundation::Application.routes.draw do

  devise_for :users, :path_names => { :sign_in => 'login', :sign_out => 'logout' }
  
  root :to => "welcome#index"

  match 'home' => "welcome#logged_in_index"  
  
  resource :adg_registration
  resource :user_session
  resource :user, :as => :account

  resource :businesses
  
  resources :users do
    get :confirm
    resources :businesses do
      get :attachment
    end
  end
end
