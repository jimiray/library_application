# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string  :title
      t.integer :author_id
      t.string  :isbn
      t.date    :publication_on
      t.timestamps
    end
  end
end
