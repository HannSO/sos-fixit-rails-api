require 'rails_helper'

describe 'adding Skills to Users' do

  before(:each) do

    user = FactoryGirl.create(:user)
    @user_id = user.id
    @auth_headers = user.create_new_auth_token
    skill_one = Skill.create(name: 'Ironmongery')
    skill_two = Skill.create(name: 'Basket Weaving')


    @skill_params = {
      user: user,
      skills: [skill_one.id, skill_two.id]
    }

  end

  it "Will allow a user to add a skill" do
    put "/users/#{@user_id}", @skill_params, @auth_headers
    expect(response).to be_success
    expect(User.find(@user_id).skills).to include(Skill.first)
    expect(User.find(@user_id).skills).to include(Skill.second)

  end

  it "Won't allow a user to add a skill twice" do
    patch "/users/#{@user_id}", @skill_params, @auth_headers
    expect { patch "/users/#{@user_id}", @skill_params, @auth_headers }.to raise_error(/Skill has already been taken/)
  end


end
