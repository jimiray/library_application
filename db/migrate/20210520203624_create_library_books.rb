# frozen_string_literal: true

class CreateLibraryBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :library_books do |t|
      t.integer :library_id
      t.integer :book_id
      t.boolean :available
      t.timestamps
    end
  end
end
