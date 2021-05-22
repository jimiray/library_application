# frozen_string_literal: true

class CreateCheckouts < ActiveRecord::Migration[6.1]
  def change
    create_table :checkouts do |t|
      t.integer :library_book_id
      t.integer :member_id
      t.time    :returned_at
      t.timestamps
    end
  end
end
