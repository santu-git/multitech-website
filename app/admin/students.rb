ActiveAdmin.register Student do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :father_name, :contact_number, :address, :image
  show do
    # renders app/views/admin/st/_some_partial.html.erb
    render 'detail', { student: student }
  end
  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :father_name
      f.input :contact_number
      f.input :address
      f.input :image, as: :file
    end
    f.para "Press cancel to return to the list without saving."
    f.actions
  end
  
end
