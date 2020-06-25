Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :projects, only: [:index, :show, :new, :edit]

patch "/projects/:id", to: "projects#update"
post "/projects", to: "projects#create"
delete "/projects/:id", to: "projects#delete"
end
