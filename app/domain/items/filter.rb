# frozen_string_literal: true

module Items
  class Filter
    include Interactor::Initializer

    initialize_with :brand, :status

    def run
      items = Item.all

      items = items.where(brand: brand) if brand

      items = items.where(status: status) if status

      items
    end


  end
end
