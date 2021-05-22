# frozen_string_literal: true

class LibraryBookSerializer
  include JSONAPI::Serializer

  set_type   :book
  set_id     :isbn
  attributes :available

  attribute :available, &:available?

  attribute :title do |object|
    object.book.title
  end

  attribute :author do |object|
    object.book.author.name
  end

  attribute :checked_out_by do |object|
    object.most_recent_checkout.nil? ? nil : object.most_recent_checkout.member_id
  end
end
