class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :nombre
      t.string :cod_instituto
      t.string :cod_senecyt
      t.string :cod_fisico
      t.string :cod_anterior
      t.string :cod_serie
      t.text :descripcion
      t.text :color
      t.text :material
      t.text :marca
      t.text :estado
      t.string :references

      t.timestamps
    end
  end
end
