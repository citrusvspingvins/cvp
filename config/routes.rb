Citvsping::Application.routes.draw do

  get "testmodelcontr/new"
  get "testmodelcontr/show"
  get "testmodelcontr/vote"

  resources :nescaves
  match '/lol', :to => 'nescaves#lol'
  match '/cats', :to => 'citping#cats'
  match '/about', :to => 'citping#about'
  match '/vote', :to => 'citping#vote'
  match "vote/:target" => "testmodelcontr#vote"

  root :to => 'citping#index'

end
