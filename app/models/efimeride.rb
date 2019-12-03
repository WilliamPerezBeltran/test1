# frozen_string_literal: true

class Efimeride < ApplicationRecord
  belongs_to :category
  mount_uploader :image, ImageUploader
end
