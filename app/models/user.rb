class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :users_skills
  has_many :skills, through: :users_skills
  has_many :recieved_jobs, foreign_key: "recipient_id", source: :job
  has_many :fixed_jobs, foreign_key: "fixer_id", source: :job

  acts_as_messageable

  before_save -> do
    self.uid = SecureRandom.uuid
    skip_confirmation!
  end

  def mailboxer_email(object)
   email
  end

end
