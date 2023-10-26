class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :uuid
      t.decimal :price
      t.string :brand
      t.text :photo_url
      t.integer :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
