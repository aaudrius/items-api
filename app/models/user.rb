# frozen_string_literal: true

class User < ApplicationRecord
  before_create :set_uuid
  has_many :items, dependent: :destroy

  private

  def set_uuid
    self.uuid = SecureRandom.uuid
  end
end
