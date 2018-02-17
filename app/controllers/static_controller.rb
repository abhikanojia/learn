class StaticController < ApplicationController
  # before_action :set_this
  # prepend_before_action :something_else, :prepend_action_second
  # skip_before_action :prepend_action_second
  # after_action :after_action_static

  def index
    @users = User.all
    # logger.info "index action....."
  end

  def test_name
    puts "test called"
    render :index
  end

  private
    def set_this
      debugger
      puts "before_action"
    end

    def something_else
      puts "prepend before_action"
    end

    def prepend_action_second
      puts "prepend_action_second"
    end

    def after_action_static
      debugger
      logger.info "after_action_static.."
    end
end
