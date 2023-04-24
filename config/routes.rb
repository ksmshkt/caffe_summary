Rails.application.routes.draw do
  root to: "shops#search"
  get "shops", to: "shops#show"
end
