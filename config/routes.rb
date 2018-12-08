Rails.application.routes.draw do

    root 'toilets#index', as: 'home'

    resources :toilets do
      resources :comments
    end

end
