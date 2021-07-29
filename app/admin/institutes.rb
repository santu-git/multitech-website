ActiveAdmin.register Institute do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :owner_name, :contact_number, :location, :address, :pin_code, :state_id, :district_id
  
  index do
    selectable_column
    column :name
    column :owner_name
    column :contact_number
    column :state
    column :district
    actions
  end
  form title: 'New Institute' do |f|
    f.semantic_errors
    f.inputs do
      f.input :district_id, as: :nested_select, level_1: {attribute: :state_id}, level_2: {attribute: :district_id}
      f.input :name
      f.input :owner_name
      f.input :contact_number
      f.input :location
      f.input :address
      f.input :pin_code
      f.input :image, as: :file
    end
    #inputs
    #input :district
    #end
    # panel 'Markup' do
    #   "The following can be used in the content below..."
    # end
    # inputs 'Content', :address
    f.para "Press cancel to return to the list without saving."
    f.actions
  end

  #form partial: 'form'
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :owner_name, :contact_number, :location, :address, :pin_code, :state_id, :district_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
