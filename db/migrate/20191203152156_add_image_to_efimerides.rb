# frozen_string_literal: true

class AddImageToEfimerides < ActiveRecord::Migration[6.0]
  def change
    add_column :efimerides, :image, :string
  end
end
