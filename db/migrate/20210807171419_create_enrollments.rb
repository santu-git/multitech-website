class CreateEnrollments < ActiveRecord::Migration[6.0]
  def change
    create_table :enrollments do |t|
      t.string :enrollment_no
      t.references :student, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.date :joining_date
      t.date :exam_date
      t.string :grade
      t.boolean :certificated_issued

      t.timestamps
    end
  end
end
