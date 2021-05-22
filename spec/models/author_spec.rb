# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Author, type: :model do
  let(:author) { create(:author) }
  subject { author }

  it { expect(subject.name).to eq [author.first_name, author.last_name].join(' ') }
end
