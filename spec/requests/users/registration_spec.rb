require 'spec_helper'

describe 'Users'  do

  context 'registration' do

    before do
      @user_params = {
        email: 'mail@mail.com',
        password: 'password',
        password_confirmation: 'password'
      }
      @invalid_params = {
        email: 'mail@mail.com',
        password: 'password',
        password_confirmation: 'passwod'
      }
    end

    it 'successfully registers a user with valid details' do
      post '/auth', @user_params
      json = JSON.parse(response.body)
      expect(response).to be_success
      expect(json['status']).to eq('success')
      expect(json['data']['email']).to eq('mail@mail.com')
    end

    it "won't register a user with invalid details" do
      post '/auth', @invalid_params
      json = JSON.parse(response.body)
      expect(response).not_to be_success
      expect(json['status']).to eq('error')
    end

  end

end
