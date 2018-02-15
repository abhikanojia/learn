class User < ApplicationRecord
  before_destroy :check_posts
  has_many :posts, dependent: :destroy
  has_many :addresses

  # around_save :around_save_callback
  # before_validation :ensure_user_has_name
  # after_validation :after_validation_callback
  # # around_save :around_save_callback

  after_initialize :initalized_callback



  # before_save :before_save_callback
  # after_save :after_save_callback

  # before_create :before_create_callback
  # after_create :after_create_callback


  validates :name, goodness: true

  private

    def initalized_callback
      logger.info "initalized_callback"
    end

    def check_posts
      if posts.size < 5
        throw(:abort)
      end
    end

    def ensure_user_has_name
      puts "Before validation callback.."
    end

    def after_validation_callback
      puts "After validation callback"
    end

    def before_save_callback
      puts "before_save callback"
    end

    def after_save_callback
      puts "after_save_callback"
    end

    def around_save_callback
      puts "around save callback"
      yield
      puts "around after"
    end

    def before_create_callback
      puts "before_create callback"
    end

    def after_create_callback
      puts "after_create_callback"
    end
end
