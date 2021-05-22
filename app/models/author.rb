# frozen_string_literal: true

class Author < ApplicationRecord
  include HasName

  has_many :books

  validates :first_name, :last_name, presence: true
end
