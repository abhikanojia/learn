class UsersController < ApplicationController
  USERS = { "lifo" => "world" }

  before_action :authenticate
  # http_basic_authenticate_with name: "abhishek", password: "secret"

  def index
    @users = User.all
    respond_to do |format|
      format.csv { send_data @users.to_csv }
      format.pdf { send_data render @users }
      # format.csv { send_data @users.to_csv, filename: 'test.csv' }
      format.html
    end
  end

  private

    def authenticate
      authenticate_or_request_with_http_digest do |username|
        USERS[username]
      end
    end
end
