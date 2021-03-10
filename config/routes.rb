Rails.application.routes.draw do
  root to: 'subscriptions#new'
  get 'en', to: 'en/subscriptions#new'

  post 'subscriptions', to: 'subscriptions#create'
  post 'en/subscriptions', to: 'en/subscriptions#create'

  get 'fiesta', to: 'responses#new', as: :fiesta
  get 'en/fiesta', to: 'en/responses#new'

  post 'responses', to: 'responses#create'
  post 'en/responses', to: 'en/responses#create'
end
