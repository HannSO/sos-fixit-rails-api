require 'rails_helper'

describe 'Creating a new job' do

  user_one = FactoryGirl.create(:user)
  user_two = FactoryGirl.create(:user)
  @job = {
    recipient_id: user_one.id,
    fixer_id: user_two.id,
    name: "A task"
  }

  it 'creates a new job with two users' do
    post '/jobs', @job
    json = JSON.parse(response.body)
    expect(response).to be_success
  end

end
