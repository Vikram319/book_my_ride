# frozen_string_literal: true

class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :first_name
      t.string :last_name
      t.string :license
      t.string :mobile_number

      t.timestamps
    end
  end
end
