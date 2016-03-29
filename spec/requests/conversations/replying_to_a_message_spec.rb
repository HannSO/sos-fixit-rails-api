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

  it 'allows a signed-in user to reply to a message from another user' do
    @user_two_auth_headers = user_two.create_new_auth_token
    post "/conversations/#{Mailboxer::Conversation.first.id}/reply", @reply, @user_two_auth_headers
    json = JSON.parse(response.body)
    expect(response).to be_success
  end

end
