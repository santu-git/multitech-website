class CreateInstitutes < ActiveRecord::Migration[6.0]
  def change
    create_table :institutes do |t|
      t.string :name
      t.string :owner_name
      t.string :contact_number
      t.string :location
      t.text :address
      t.string :pin_code
      t.references :state, null: false, foreign_key: true
      t.references :district, null: false, foreign_key: true

      t.timestamps
    end
  end
end
