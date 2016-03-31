require 'rails_helper'

describe 'Sending a message' do

  user_one = FactoryGirl.create(:user)
  user_two = FactoryGirl.create(:user)

  before do
    @message = {
      recipients: user_two.id,
      message: {
        body: "message body",
        subject: "message subject"
      }
    }
    @reply = {
      body: "reply body"
    }
    @user_one_auth_headers = user_one.create_new_auth_token
    post '/messages', @message, @user_one_auth_headers
  end
end
