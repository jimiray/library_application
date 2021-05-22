# frozen_string_literal: true

FactoryBot.define do
  factory :member do
    library
    first_name    { Faker::Name.first_name }
    last_name     { Faker::Name.last_name }
    number        { Faker::Number.number(digits: 10) }
    address       { Faker::Address.street_address }
    city          { Faker::Address.city }
    subdivision   { Faker::Address.state }
    postal_code   { Faker::Address.zip }
    date_of_birth { Faker::Date.between(from: (Date.today - 50.years), to: Date.today - 5.years) }
  end
end
