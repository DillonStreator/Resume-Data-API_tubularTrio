Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      get "/resumes" => "resumes#index"
      get "/resumes/:id" => "resumes#show"

      get "/students" => "students#index"
      post "/students" => "students#create"
      get "/students/:id" => "students#show"
      patch "/students/:id" => "students#update"
      delete "/students/:id" => "students#destroy"

      get "/capstones" => "capstones#index"
      post "/capstones" => "capstones#create"
      get "/capstones/:id" => "capstones#show"
      patch "/capstones/:id" => "capstones#update"
      delete "/capstones/:id" => "capstones#destroy"

      get "/educations" => "educations#index"
      post "/educations" => "educations#create"
      get "/educations/:id" => "educations#show"
      patch "/educations/:id" => "educations#update"
      delete "/educations/:id" => "educations#destroy"

      get "/skills" => "skills#index"
      post "/skills" => "skills#create"
      get "/skills/:id" => "skills#show"
      patch "/skills/:id" => "skills#update"
      delete "/skills/:id" => "skills#destroy"
      
    end
  end
end
