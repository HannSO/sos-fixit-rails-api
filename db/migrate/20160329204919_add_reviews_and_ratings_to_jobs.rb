class AddReviewsAndRatingsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :active?, :boolean, default: false
    add_column :jobs, :review, :text
    add_column :jobs, :rating, :integer
  end
end
