class CreateLojas < ActiveRecord::Migration
  def change
    create_table :lojas do |t|
      t.string :name
      t.integer :cidade_id
      t.string :endereco
      t.string :telefone
      t.string :email
      t.string :diretor
      t.string :mapa

      t.timestamps
    end
  end
end
