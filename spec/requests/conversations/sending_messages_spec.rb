require 'rails_helper'

describe 'Sending a message' do

  user_one = FactoryGirl.create(:user)
  user_two = FactoryGirl.create(:user)

  before do
    @message = {
      sender: user_one.id,
      recipient: user_two.id,
      message: {
        body: "message body",
        subject: "message subject"
      }
    }
  end

  it 'allows a signed-in user to send a message to another user' do
    @auth_headers = user_one.create_new_auth_token
    post '/messages', @message, @auth_headers
    expect(response).to be_success
    expect(user_two.mailbox.inbox.first.subject).to eq("message subject")
  end

end
