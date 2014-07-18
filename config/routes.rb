Jushi::Application.routes.draw do
  root "index#welcome"

  post 'show' => 'index#show'
  get 'about_us' => 'index#about_us', :as => :about_us
  get 'cases' => 'index#case_list', :as => :case_list
  get 'showcase/:id' => 'index#case_show', :as => :case_show
  get 'contact' => 'index#contact', :as => :contact
  
  namespace 'admin' do
  	get 'index' => 'index#index', :as => :index  	
  	match 'case/create' => 'index#create', :as => :create_case, :via => [:get, :post]  	
  	match 'case/destroy' => 'index#destroy', :as => :destroy_case, :via => [:get]  	
  	match 'login' => 'index#admin_login', :as => :login, :via => [:get, :post]
  	match 'company/intro' => 'company#intro', :as => :company_intro, :via => [:get, :post]
  	match 'company/feature' => 'company#feature', :as => :company_feature, :via => [:get, :post]
    match 'company/feature_list' => 'company#feature_list', :as => :company_feature_list, :via => [:get]    
  end
end
