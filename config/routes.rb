Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/games" => "games#index"
    get "/games/:id" => "games#show"

    get "/tags" => "tags#index"
    get "/tags/:id" => "tags#show"

    post "/users" => "users#create"
    get "/users/:id" =>"users#show"
    patch "/users/:id" => "users#update"
    delete "users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    post "/favorites" => "favorites#create"
    get "/favorites/:id" => "favorites#show"
    delete "/favorites/:game_id" => "favorites#destroy"

    get "/questionnaire" => "questionnaires#index"
    post "/questionnaire" => "questionnaires#create"

    # get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] }
  end
end
