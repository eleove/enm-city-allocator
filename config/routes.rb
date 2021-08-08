# frozen_string_literal: true

Rails.application.routes.draw do
  get 'homepage/index'
  namespace :api do
    namespace :v1 do
      get 'tests', to: 'tests#index'
      resources :cities, only: %i[index show]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '*path', to: 'application#frontend_index_html', constraints: lambda { |request|
                                                                     !request.xhr? && request.format.html?
                                                                   }
end
