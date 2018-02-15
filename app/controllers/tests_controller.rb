class TestsController < ApplicationController
  def index
    @user = User.first
  end
end
