class CreateEscolas < ActiveRecord::Migration[7.0]
  def change
    create_table :escolas do |t|
      t.string :cnpj
      t.string :nome
      t.string :end
      t.string :cep
      t.string :tel
      t.string :diretor
      t.string :email

      t.timestamps
    end
  end
end
