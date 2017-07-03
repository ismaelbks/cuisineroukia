Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'pages#home'

    get '/offre-traiteur', to: 'pages#index'
    get '/questions-frequentes', to: 'pages#questions_frequentes'

  	get '/offre-traiteur/mechoui', to: 'pages#mechoui'
  	get '/offre-traiteur/pastilla', to: 'pages#pastilla'
  	get '/offre-traiteur/tajine', to: 'pages#tajine'
  	get '/offre-traiteur/plats-de-fete', to: 'pages#plats_de_fete'
  	get '/offre-traiteur/plats-froids', to: 'pages#plats_froids'
  	get '/offre-traiteur/patisseries-marocaines', to: 'pages#patisseries_marocaines'
  	get '/offre-traiteur/couscous-royal', to: 'pages#couscous_royal'

    get '/contact', to: 'pages#contact'
    post '/contact', to: 'contacts#create'
end
