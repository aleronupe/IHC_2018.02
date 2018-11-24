class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
    Category.create(:name => "Absorvente")
    Category.create(:name => "Sabonete Intimo")
    Category.create(:name => "Desodorantes")
    Category.create(:name => "Hidratantes")
    Category.create(:name => "Calcinha")
    Category.create(:name => "Sutiã")
    Category.create(:name => "Camisola")
    Category.create(:name => "Preservativos")
    Category.create(:name => "Segurança")
    Category.create(:name => "Acessórios")
    Category.create(:name => "Lenços")
    Category.create(:name => "Perucas")
  end
end
