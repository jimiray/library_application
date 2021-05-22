# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    author
    isbn           { Faker::Number.number(digits: 10) }
    publication_on { Faker::Date.between(from: (Date.today - 100.years), to: Date.today) }
  end
end
