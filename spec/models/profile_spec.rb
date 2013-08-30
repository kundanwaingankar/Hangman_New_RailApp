require 'spec_helper'

describe Profile do

  subject(:user_profile) { Profile.new }



  it "user_id should not be empty" do
    user_profile.user_id.should_not == nil
  end

  it "first_name should not be empty" do
    user_profile.first_name.should_not == nil
    user_profile.first_name.length.should_not == 0
  end

  it "last_name should not be empty" do
    user_profile.last_name.should_not == nil
    user_profile.last_name.length.should_not == 0
  end

  it "email should not be empty" do
    user_profile.email.should_not == nil
    user_profile.email.length.should_not == 0

  end

  it "gender should not be empty" do
    user_profile.first_name.should_not == nil
  end

  it "email should be valid" do
    #user_profile.
    user_profile.email.should =~ /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
  end

  it "user_id should exist in user Table or model"
  it "email should be unique"
  it "user_id should be unique"

end