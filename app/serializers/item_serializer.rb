# frozen_string_literal: true

class ItemSerializer < ActiveModel::Serializer
  attributes :uuid, :price, :brand, :photo_url, :status, :user_uuid

  def user_uuid
    object.user.uuid
  end
end
