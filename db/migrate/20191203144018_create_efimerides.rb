# frozen_string_literal: true

class CreateEfimerides < ActiveRecord::Migration[6.0]
  def change
    create_table :efimerides do |t|
      t.string :date
      t.string :text
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
