require 'rails_helper'

describe 'Users' do

  context 'Updating a user profile' do

    before do
      user = FactoryGirl.create(:user)
      @user_id = user.id
      @auth_headers = user.create_new_auth_token
      @user_params = {
        email: user.email,
        password: user.password
      }
      @location = {
        longitude: -77.0427934,
        latitude: -12.046374
      }
    end

    it 'allows a user to update their profile' do
      patch "/auth", @location, @auth_headers
      json = JSON.parse(response.body)
      expect(response).to be_success
      expect(User.find(@user_id).longitude).to eq(-77.0427934)
      expect(User.find(@user_id).latitude).to eq(-12.046374)
    end

  end

end
