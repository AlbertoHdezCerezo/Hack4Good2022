Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # LookBook Engine
  # More information: https://github.com/allmarkedup/lookbook#2-mount-the-lookbook-engine
  Rails.application.routes.draw do
    if Rails.env.development?
      mount Lookbook::Engine, at: "/internal/docs/lookbook"
    end
  end
end
