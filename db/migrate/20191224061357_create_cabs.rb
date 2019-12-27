# frozen_string_literal: true

class CreateCabs < ActiveRecord::Migration[5.2]
  def change
    create_table :cabs do |t|
      t.integer :seats
      t.string :number

      t.timestamps
    end
  end
end
