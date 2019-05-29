Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
end

# , controllers: {registrations: "registrations", passwords: "passwords"}
