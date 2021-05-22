# frozen_string_literal: true

FactoryBot.define do
  factory :checkout do
    member
    returned_at { nil }
  end
end
