# frozen_string_literal: true

class LibraryBook < ApplicationRecord
  belongs_to :library
  belongs_to :book

  has_many :checkouts, -> { order('created_at DESC') }

  delegate :isbn, :author_id, to: :book

  def most_recent_checkout
    checkouts.first
  end

  def available?
    return true if most_recent_checkout.nil?

    !most_recent_checkout.returned_at.nil?
  end
end
