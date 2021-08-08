ActiveAdmin.register Notification do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :message, :start_date, :end_date
  index do
    selectable_column
    column :message
    column :start_date
    column :end_date
    actions
  end
  show do
    attributes_table do
      row :message
      row :start_date
      row :end_date
    end
  end
  
end
