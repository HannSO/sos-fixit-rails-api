require 'spec_helper'

describe 'Users' do

  context 'Signing In' do

    before do
      user = FactoryGirl.create(:user)
      @user_params = {
        email: user.email,
        password: user.password
      }
    end

    it 'sucessfully signs in a user' do
      post '/auth/sign_in', @user_params
      json = JSON.parse(response.body)
      expect(response).to be_success
    end

  end

end
