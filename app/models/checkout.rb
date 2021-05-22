# frozen_string_literal: true

class Checkout < ApplicationRecord
  belongs_to :library_book
  belongs_to :member
end
