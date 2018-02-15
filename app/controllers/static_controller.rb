class StaticController < ApplicationController
  before_action :set_this
  prepend_before_action :something_else, :prepend_action_second
  skip_before_action :prepend_action_second

  def index
    logger.info "index action....."
  end

  def test_name
    puts "test called"
  end

  private
    def set_this
      puts "before_action"
    end

    def something_else
      puts "prepend before_action"
    end

    def prepend_action_second
      puts "prepend_action_second"
    end
end
