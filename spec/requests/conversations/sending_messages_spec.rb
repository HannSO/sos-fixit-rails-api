require 'rails_helper'

describe 'Sending a message' do

  user_one = FactoryGirl.create(:user)
  user_two = FactoryGirl.create(:user)

  before do
    @message = {
      sender: user_one.id,
      recipients: user_two.id,
      message: {
        body: "message body",
        subject: "message subject"
      }
    }
  end

  it 'allows a signed-in user to send a message to another user' do
    @auth_headers = user_one.create_new_auth_token
    post '/messages', @message, @auth_headers
    json = JSON.parse(response.body)
    expect(response).to be_success
  end

end
