require 'rails_helper'

describe 'Users' do

  context 'Updating a user profile' do

    before do
      user = FactoryGirl.create(:user)
      @auth_headers = user.create_new_auth_token
      @user_params = {
        email: user.email,
        password: user.password
      }
      @location = {
        id: user.id,
        password: user.password,
        location: "test-location"
      }
    end

    it 'allows a user to update their profile' do
      patch "/auth", @location, @auth_headers
      json = JSON.parse(response.body)
      expect(response).to be_success
      expect(User.first.location).to eq("test-location")
    end

  end

end
