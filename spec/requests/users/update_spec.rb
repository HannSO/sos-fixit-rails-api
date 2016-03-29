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
        longitude: -77.0427934,
        latitude: -12.046374
      }
    end

    it 'allows a user to update their profile' do
      patch "/auth", @location, @auth_headers
      json = JSON.parse(response.body)
      expect(response).to be_success
      expect(User.first.longitude).to eq(-77.0427934)
      expect(User.first.latitude).to eq(-12.046374)
    end

  end

end
