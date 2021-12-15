class ApplicationController < ActionController::Base
  before_action :set_notification

  def set_notification
    @notifications = Notification.active_notifications
  end
end
