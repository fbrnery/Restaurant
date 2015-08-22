class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.string :name
      t.string :endereco
      t.string :especialidade

      t.timestamps null: false
    end
  end
end
