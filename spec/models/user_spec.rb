require 'spec_helper'

describe User do
  subject(:user) {User.new}

    it "username and password should not be blank" do
      user.username.should_not==""
      user.password.should_not==""
    end
    it "username should be unique"
    it "password length should be greater than or equal to six" do
      user.password.length.should_not < 6
    end
    it "password should contain atleast one number"  do
      user.password.should =~ /\d/
  end


  pending "add some examples to (or delete) #{__FILE__}"
end
