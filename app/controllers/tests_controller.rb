class TestsController < ApplicationController

  def index
    logger.debug "begin"
    @test = User.first.posts
    logger.debug "end"
    # @test = @test.where("city", "asd")
    # @test.each
    render plain: "ok"
  end
end
