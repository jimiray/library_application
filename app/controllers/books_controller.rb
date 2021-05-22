# frozen_string_literal: true

class BooksController < ApplicationController
  before_action :find_library, only: %w[index]

  def index
    @books = @library.library_books.includes(:book)
    render json: LibraryBookSerializer.new(@books).serializable_hash
  end

  private

  def find_library
    @library = Library.find(params[:library_id])
  end
end
