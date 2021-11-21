Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  namespace :api do
    namespace :v1 do

      # resources :vocabulary_words, only: [:index, :show, :create]
      # resources :sentences, only: [:index, :show, :create, :destroy]

      resources :vocabulary_words do
        resources :sentences
      end

    end
  end
  
end