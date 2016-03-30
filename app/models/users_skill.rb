class UsersSkill < ActiveRecord::Base

  belongs_to :user
  belongs_to :skill
  validates_uniqueness_of :skill_id, :scope => :user_id
end
