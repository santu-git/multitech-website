ActiveAdmin.register Announcement do
  permit_params :title, :content, :published

  index do
    selectable_column
    id_column
    column :title
    column :content
    column :published
    actions defaults: true do |announcement|
      if announcement.published
        link_to 'Unpublish', unpublish_admin_announcement_path(announcement), method: :put
      else
        link_to 'Publish', publish_admin_announcement_path(announcement), method: :put
      end
    end
  end

  filter :title
  filter :published

  form do |f|
    f.inputs do
      f.input :title
      f.input :content
      f.input :published
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :content
      row :published
    end
  end

  member_action :publish, method: :put do
    announcement = Announcement.find(params[:id])
    announcement.update(published: true)
    redirect_to admin_announcements_path, notice: "Announcement published."
  end

  member_action :unpublish, method: :put do
    announcement = Announcement.find(params[:id])
    announcement.update(published: false)
    redirect_to admin_announcements_path, notice: "Announcement unpublished."
  end
end
