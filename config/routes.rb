AmorExigente::Application.routes.draw do
  devise_for :users

  root :to => "pages#index" 

  resources :events, :only => [:index, :show], :path => "eventos"
  resources :albums, :only => [:index, :show], :path => "albums"
  resources :partners, :only => [:index], :path => "parceiros"
  resources :projects, :only => [:index, :show], :path => "projetos"
  resources :institutionals, :only => [:index], :path => "quem-somos"
  resources :contacts, :only => [:create], :path => "contatos"
  
  get 'principios', :to => "institutionals#principles", :as => :principles
  get 'contato', :to => "contacts#new", :as => :contact
  
  namespace :admin do
    root :to => "admins#index"
    resources :event_categories, :path => "categorias-de-eventos"
    resources :events, :path => "eventos"
    resources :institutionals, :path => "quem-somos"
    resources :users, :path => "usuarios"
    resources :albums, :path => "albums"
    resources :projects, :path => "projetos"
    resources :partners, :path => "parceiros"
    
    resources :pictures, :path => 'imagens' do
      collection do
        get :browser
        post :upload
      end
    end
  end
end
