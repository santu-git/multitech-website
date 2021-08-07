class AddContactNumberToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :contact_number, :string
  end
end
