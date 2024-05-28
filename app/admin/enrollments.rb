ActiveAdmin.register Enrollment do
  permit_params :enrollment_no, :student_id, :course_id, :joining_date, :exam_date, :grade, :certificated_issued

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :enrollment_no, :student_id, :course_id, :joining_date, :exam_date, :grade, :certificated_issued
  #
  # or
  #
  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :enrollment_no
      f.input :student, as: :select
      f.input :course, as: :select
      f.input :joining_date
      f.input :exam_date
      f.input :grade
      f.input :certificated_issued, as: :boolean
    end
    f.para "Press cancel to return to the list without saving."
    f.actions
  end
  
end
