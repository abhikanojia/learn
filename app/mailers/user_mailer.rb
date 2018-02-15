class UserMailer < ApplicationMailer
  def verify(id)
    @user = User.find_by(id: id)
    logger.debug @user
  end
end
