ActiveAdmin.register Course do

  permit_params :name, :code, :duration, :details, :syllabus
  
  index do
    selectable_column
    column :name
    column :code
    column :duration
    actions
  end
  show do
    attributes_table do
      row :name
      row :code
      row :duration
      row :details do
        course.details.html_safe
      end
      row :syllabus do
        if course.syllabus.attached?
          link_to course.syllabus.filename, url_for(course.syllabus)
        else
          "No syllabus attached"
        end
      end
    end
  end

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :code
      f.input :duration
      f.input :details, as: :quill_editor, input_html: { data: { options: { modules: { toolbar: [
        ['bold', 'italic', 'underline'], 
        ['link'],  
        [{ 'header': [1, 2, 3, 4, 5, 6, false] }],
        [{ 'color': [] }, { 'background': [] }],
        [{ 'font': [] }],
        [{ 'align': [] }],
        [{ 'list': 'ordered'}, { 'list': 'bullet' }],
        [{ 'size': ['small', false, 'large', 'huge'] }],
        ['clean']          
        ]}, placeholder: 'Type something...', theme: 'snow' } } }
        f.input :syllabus, as: :file
    end
    f.para "Press cancel to return to the list without saving."
    f.actions
  end
end
