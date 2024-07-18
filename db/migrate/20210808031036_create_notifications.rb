class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.string :message
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
