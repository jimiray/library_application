# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Library, type: :model do
  describe 'validations' do
    context 'without a name' do
      let(:library) { build(:library, name: nil) }
      it { expect(library.valid?).to eq false }
    end

    context 'without a city' do
      let(:library) { build(:library, city: nil) }
      it { expect(library.valid?).to eq false }
    end

    context 'without a subdivision' do
      let(:library) { build(:library, subdivision: nil) }
      it { expect(library.valid?).to eq false }
    end
  end
end
