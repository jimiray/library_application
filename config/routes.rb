# frozen_string_literal: true

Rails.application.routes.draw do
  get '/library/:library_id/books', to: 'books#index'
end
