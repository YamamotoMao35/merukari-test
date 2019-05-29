Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
  }
  
  devise_scope :user do
    get 'sms' => 'users/registrations#sms'
    get 'address' => 'users/registrations#address'
    get 'payMethod' => 'users/registrations#payMethod'
    get 'complete' => 'users/registrations#complete'
  end

  root 'items#index'
end
