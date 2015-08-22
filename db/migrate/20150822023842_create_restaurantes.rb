class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.string :name, limit: 35
      t.string :endereco, limit: 100
      t.string :especialidade, limit: 35

      t.timestamps null: false
    end
  end
end
