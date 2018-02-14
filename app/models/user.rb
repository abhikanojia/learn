class User < ApplicationRecord
  has_many :posts
  has_many :addresses

  before_validation :ensure_user_has_name
  after_validation :after_validation_callback

  private

    def ensure_user_has_name
      puts "checking ensure_user_has_name.."
    end

    def after_validation_callback
      puts "after_validation_callback"
    end
end
