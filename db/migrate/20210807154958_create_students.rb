class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :reg_no
      t.string :name
      t.string :father_name
      t.text :address

      t.timestamps
    end
  end
end
