Rails.application.routes.draw do
  # Show all lights #
  get '/lights/', to: 'lights#index'

  # Show single light #
  get '/lights/:id', to: 'lights#show'

  # Turn off all lights #
  get '/lights/all/off', to: 'lights#all_off'

  # Turn off individual light #
  get '/lights/:id/off', to: 'lights#individual_off'

  # Turn on all lights #
  get '/lights/all/on', to: 'lights#all_on'

  # Turn on individual light #
  get '/lights/:id/on', to: 'lights#individual_on'

  # Adjust brightness of individual light #
  post '/lights/:id/adjust_brightness', to: 'lights#adjust_brightness'
end