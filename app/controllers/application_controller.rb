class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :before_app_callback
  after_action :after_app_callback
  prepend_before_action :prepen_action

  def before_app_callback
    puts "before_app_callback.."
  end

  def after_app_callback
    puts "after_app_callback"
  end

  def prepen_action
    puts "prepend_before_action_application_controller"
  end
end
