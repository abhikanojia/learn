class UserMailer < ApplicationMailer
  def verify(id)
    @user = User.find_by(id: id)
    logger.debug @user
    mail to: @user.email, subject: t('.')
  end
end
