class User < ApplicationRecord
  attr_accessor :test_val

  attribute :test_val, :string

  def test_val=(val)
    attribute_will_change!('test_val') if test_val != val
    @test_val = val
  end

  def name=(val)
    self.test_val = val.split(/\w/).second
    @name = val.split(/\w/).first
  end


  def save
    changes_applied
    super
  end

  ATTRIBUTES = %w(id name created_at updated_at)
  # default_scope { where("created_at < ?", Time.current) }
  scope :without_post, -> { includes(:posts).where("posts.id IS NULL").references(:posts) }
  # scope :abhishek, -> { where(name: "ahishek") }
  # has_many :stories, dependent: :destroy, class_name: "Post", foreign_key: "test_id"
  # has_many :addresses
  has_many :posts, dependent: :destroy

  # around_save :around_save_callback
  # before_validation :ensure_user_has_name
  # after_validation :after_validation_callback
  # # around_save :around_save_callback

  # after_initialize :initalized_callback

  # before_destroy :check_post, prepend: true

  # before_save :before_save_callback
  after_save :after_save_callback

  # before_create :before_create_callback
  after_create :after_create_callback, on: :commit

  define_model_callbacks :publish, only: [:before, :after]

  before_publish :check_if_publishable
  after_publish :notify_user
  validates :name, presence: true
  # validates_with GoodnessValidator
  # validates :name, goodness: true
  def publish
    run_callbacks :publish do
      logger.debug "Publishing...."
    end
  end

  def self.abhishek
    where(name: "abhishe")
  end

  def self.to_csv
    CSV.generate(headers: true) do |csv|
      csv << ATTRIBUTES
      all.each do |user|
        csv << user.attributes.values_at(*ATTRIBUTES)
      end
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
      debugger
      puts "after_create_callback"
    end
end
