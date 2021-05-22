# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :author

  has_many :library_books
  has_many :libraries, through: :library_books

  validates :title, :isbn, presence: true
end
