# frozen_string_literal: true

class AuthorSerializer
  include JSONAPI::Serializer
  attributes :name
end
