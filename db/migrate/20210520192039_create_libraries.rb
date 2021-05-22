# frozen_string_literal: true

class CreateLibraries < ActiveRecord::Migration[6.1]
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :address
      t.string :address2
      t.string :city
      t.string :subdivision
      t.string :postal_code
      t.timestamps
    end
  end
end
