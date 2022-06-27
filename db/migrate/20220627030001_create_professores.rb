class CreateProfessores < ActiveRecord::Migration[7.0]
  def change
    create_table :professores do |t|
      t.string :cfp
      t.string :nome
      t.string :nascimento
      t.string :tel
      t.string :email
      t.string :end
      t.string :cep
      t.references :escolas, null: false, foreign_key: true

      t.timestamps
    end
  end
end
