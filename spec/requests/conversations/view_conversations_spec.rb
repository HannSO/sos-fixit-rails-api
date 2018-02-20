require 'rails_helper'

describe 'Viewing conversations for a user' do

  let(:user_one) {FactoryGirl.create(:user)}
  let(:user_two) {FactoryGirl.create(:user)}
  let(:receipt_one) {user_one.send_message(user_two, "Body", "Subject")}
  let(:message_one) {receipt_one.notification}
  let(:conversation) {message_one.conversation}

  it 'returns the converstaions for a user' do
    @auth_headers = user_one.create_new_auth_token
    get "/conversations/", @auth_headers
    json = JSON.parse(response.body)
    expect(response).to be_success
  end

  it 'returns a single converstaion for a user' do
    @auth_headers = user_one.create_new_auth_token
    get "/conversations/#{conversation.id}", @auth_headers
    json = JSON.parse(response.body)
    expect(response).to be_success
  end

end
