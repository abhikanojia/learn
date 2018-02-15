class User < ApplicationRecord
  self.primary_key = "test"
  has_many :posts, -> { order(:created_at) },dependent: :destroy
  # has_many :addresses

  # around_save :around_save_callback
  # before_validation :ensure_user_has_name
  # after_validation :after_validation_callback
  # # around_save :around_save_callback

  # after_initialize :initalized_callback

  # before_destroy :check_post, prepend: true

  # before_save :before_save_callback
  # after_save :after_save_callback

  # before_create :before_create_callback
  # after_create :after_create_callback

  define_model_callbacks :publish, only: [:before, :after]

  before_publish :check_if_publishable
  after_publish :notify_user

  validates :name, goodness: true

  def publish
    run_callbacks :publish do
      logger.debug "Publishing...."
    end
  end

  private

    def check_if_publishable
      logger.debug "checking... if publishable"
    end

    def notify_user
      logger.debug "notify all user."
    end

    def check_post
      if posts.size < 5
        errors.add(:base, 'cannot destroy')
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
