class AddAndEditColumnsInTableAlumnos < ActiveRecord::Migration[5.1]
  def change
    add_column :alumnos, :apellido, :string
    add_column :alumnos, :nombre, :string
    add_column :alumnos, :faltas, :integer
    add_column :alumnos, :nro_lista, :integer
    remove_column :alumnos, :title
    remove_column :alumnos, :text
  end
end
