# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations' do
    context 'with invalid title' do
      let(:book) { build(:book, title: nil) }
      it { expect(book.valid?).to eq false }
    end

    context 'with invalid isbn' do
      let(:book) { build(:book, isbn: nil) }
      it { expect(book.valid?).to eq false }
    end
  end
end
