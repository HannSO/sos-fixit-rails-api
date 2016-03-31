class AddFixerAndRecipientNameToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :recipient_username, :string
    add_column :jobs, :fixer_username, :string
  end
end
