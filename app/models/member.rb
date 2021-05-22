# frozen_string_literal: true

class Member < ApplicationRecord
  include HasName

  belongs_to :library

  validates :first_name, :last_name, :date_of_birth, presence: true
end
