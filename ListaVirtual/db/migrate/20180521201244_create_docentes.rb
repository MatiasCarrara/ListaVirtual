class CreateDocentes < ActiveRecord::Migration[5.1]
  def change
    create_table :docentes do |t|
      t.string :nombre
      t.string :apellido
      t.string :materia
      t.string :clases
    end
  end
end
