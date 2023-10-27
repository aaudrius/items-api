# frozen_string_literal: true

class Item < ApplicationRecord
  before_create :set_uuid
  belongs_to :user

  private

  def set_uuid
    self.uuid = SecureRandom.uuid
  end
end
