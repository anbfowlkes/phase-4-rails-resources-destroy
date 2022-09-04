Rails.application.routes.draw do
  # resources :birds, only: [:index, :show, :create, :update, :destroy]
  get '/birds', to: 'birds#index'
  get '/birds/:id', to: 'birds#show'
  post '/birds', to: 'birds#create'

  patch '/birds/:id', to: 'birds#update'
  delete '/birds/:id', to: 'birds#destroy'
  patch "/birds/:id/like", to: "birds#increment_likes"
end
