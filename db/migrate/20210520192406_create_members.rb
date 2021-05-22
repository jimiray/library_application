# frozen_string_literal: true

class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.integer :library_id
      t.string  :first_name
      t.string  :last_name
      t.string  :number
      t.string  :address
      t.string  :address2
      t.string  :city
      t.string  :subdivision
      t.string  :postal_code
      t.date    :date_of_birth
      t.timestamps
    end
  end
end
