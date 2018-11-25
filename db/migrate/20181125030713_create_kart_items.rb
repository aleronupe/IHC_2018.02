class CreateKartItems < ActiveRecord::Migration[5.0]
  def change
    drop_table (:kart_items, if_exists: true)
    create_table :kart_items do |t|
      t.integer :quantity
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
