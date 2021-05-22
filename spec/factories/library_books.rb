# frozen_string_literal: true

FactoryBot.define do
  factory :library_book do
    library
    book
    available { false }
  end
end
