class HomeController < ApplicationController
  def index
    @notifications = Notification.active_notifications
  end
end