# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Books', type: :request do
  describe 'GET /index' do
    let!(:library)      { create(:library) }
    let!(:library_book) { create(:library_book, library: library) }

    context 'with valid library' do
      before { get "/library/#{library.id}/books" }

      it { expect(response).to have_http_status(:success) }
      it { expect(JSON.parse(response.body)['data'].size).to eq 1 }

      describe 'book JSON response' do
        subject { JSON.parse(response.body)["data"].first }

        it { expect(subject['type']).to eq 'book' }
        it { expect(subject['id']).to eq library_book.book.isbn }
        it { expect(subject['attributes']['title']).to eq library_book.book.title }
        it { expect(subject['attributes']['author']).to eq library_book.book.author.name }
      end
    end

    context 'with available book' do
      before { get "/library/#{library.id}/books" }

      context 'with 0 checkouts' do
        subject { JSON.parse(response.body)['data'].first }
        it { expect(subject['attributes']['available']).to eq true }
      end

      context 'when returned' do
        let!(:checkout) { create(:checkout, library_book: library_book, returned_at: Time.now - 1.day) }

        subject { JSON.parse(response.body)["data"].first }
        it { expect(subject['attributes']['available']).to eq true }
      end
    end

    context 'with checked out book' do
      let!(:checkout) { create(:checkout, library_book: library_book) }

      before { get "/library/#{library.id}/books" }

      subject { JSON.parse(response.body)['data'].first }

      it { expect(subject['attributes']['available']).to eq false }
      it { expect(subject['attributes']['checked_out_by']).to eq checkout.member_id }
    end
  end
end
