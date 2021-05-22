# frozen_string_literal: true

class Library < ApplicationRecord
  has_many :library_books
  has_many :books, through: :library_books

  validates :name, :city, :subdivision, presence: true
end
