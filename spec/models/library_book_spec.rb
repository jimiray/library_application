# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LibraryBook, type: :model do
  let(:library_book) { create(:library_book) }

  context 'when not checked out' do
    subject { library_book }

    it { expect(subject.most_recent_checkout).to be_nil }
    it { expect(subject.available?).to eq true }
  end

  context 'when checked out' do
    let!(:checkout) { create(:checkout, library_book: library_book) }

    subject { library_book }

    it { expect(subject.most_recent_checkout).to eq checkout }
    it { expect(subject.available?).to eq false }

    context 'multiple times' do
      let!(:checkout_2) { create(:checkout, library_book: library_book) }

      before do
        checkout.update(returned_at: Time.now - 1.day)
      end

      subject { library_book }

      it { expect(subject.most_recent_checkout).to eq checkout_2 }
      it { expect(subject.available?).to eq false }
    end
  end
end
