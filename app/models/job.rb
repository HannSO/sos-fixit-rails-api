class Job < ActiveRecord::Base

  has_one :recipient, :class_name => 'User', :foreign_key => 'recipient_id'
  has_one :fixer, :class_name => 'User', :foreign_key => 'fixer_id'

end
