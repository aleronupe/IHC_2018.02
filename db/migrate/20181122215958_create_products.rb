class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.text :description
      t.float :star_comfort
      t.float :star_siteUsage
      t.float :star_delivery
      t.float :star_attendance
      t.float :star_size
      t.float :star_quality
      t.float :star_resolution
      t.string :image
      t.integer :size
      t.string :color
      t.string :model
      t.string :details
      t.string :modelSize

      t.belongs_to :Category, foreign_key: true

      t.timestamps
    end
  end
end
