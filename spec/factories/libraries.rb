# frozen_string_literal: true

FactoryBot.define do
  factory :library do
    name        { "#{Faker::Address.city} Public Library" }
    address     { Faker::Address.street_address }
    city        { Faker::Address.city }
    subdivision { Faker::Address.state }
    postal_code { Faker::Address.zip }
  end
end
