class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :users_skills
  has_many :skills, through: :users_skills

  before_save -> do
    self.uid = SecureRandom.uuid
    skip_confirmation!
  end

end
