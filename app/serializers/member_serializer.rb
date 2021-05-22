# frozen_string_literal: true

class MemberSerializer
  include JSONAPI::Serializer
  attributes :name
end
