# frozen_string_literal: true

module HasName
  extend ActiveSupport::Concern

  def name
    [first_name, last_name].join(' ')
  end
end
