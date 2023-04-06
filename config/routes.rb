Rails.application.routes.draw do
  root to: "toppages#new"
  resources :toppages, only: %i[index new create]
end
