class CreateDiscussions < ActiveRecord::Migration[5.0]
  def change
    create_table :discussions do |t|
      t.string :title
      t.text :description
      t.belongs_to :subject, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
