# frozen_string_literal: true

Rails.application.routes.draw do
  post '/', to: 'shortened_urls#create'
  get '/:string_hash', to: 'shortened_urls#show'
end
