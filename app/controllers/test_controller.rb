class TestController < StaticController
  prepend_before_action :prepend_before_action_from_test
  before_action :before_action_method, :another_method
  after_action :after_action_method, :after_another_method

  def prepend_before_action_from_test
    logger.info "prepend_before_action_from_test"
  end

  def before_action_method
    logger.info "before_action_method"
  end

  def another_method
    logger.info "another_method"
  end

  def after_action_method
    logger.info "after_action_method"
  end

  def after_another_method
    logger.info "after_another_method"
  end
end
