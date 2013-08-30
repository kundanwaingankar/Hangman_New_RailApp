require 'spec_helper'

describe User do
  subject(:user) {User.new}

    it "username and password should not be blank" do
      user.user_name.should_not==nil
      user.password.should_not==nil
    end
    it "username should be unique"
    it "password length should be greater than or equal to six" do
      user.password="asd1"
      user.password.length.should_not < 6
    end
    it "password should contain atleast one number"  do
      user.password.should =~ /\d/
  end

end
