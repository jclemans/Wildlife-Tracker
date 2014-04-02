WildlifeTracker::Application.routes.draw do
  match('animals', {:via => :get, :to => 'animals#index'})
  match('animals', {:via => :post, :to => 'animals#create'})
  match('animals/:id', {:via => :get, :to => 'animals#show'})
  match('animals/:id/edit', {:via => :get, :to => 'animals#edit'})
  match('animals/:id', {:via => [:patch, :put], :to => 'animals#update'})
  match('animals/:id', {:via => :delete, :to => 'animals#destroy'})

  match('regions', {:via => :get, :to => 'regions#index'})
  match('regions', {:via => :post, :to => 'regions#create'})
  match('regions/:id', {:via => :get, :to => 'regions#show'})
  match('regions/:id/edit', {:via => :get, :to => 'regions#edit'})
  match('regions/:id', {:via => [:patch, :put], :to => 'regions#update'})
  match('regions/:id', {:via => :delete, :to => 'regions#destroy'})

  match('sightings', {:via => :get, :to => 'sightings#index'})
  match('sightings/sort', {:via => :get, :to => 'sightings#sort'})
  match('sightings', {:via => :post, :to => 'sightings#create'})
  match('sightings/:id/edit', {:via => :get, :to => 'sightings#edit'})
  match('sightings/:id', {:via => [:patch, :put], :to => 'sightings#update'})

end
