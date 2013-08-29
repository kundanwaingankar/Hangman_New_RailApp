require 'spec_helper'

describe Profile do

  subject(:user_profile) { Profile.new }

  pending "add some examples to (or delete) #{__FILE__}"

  it "user_id should not be empty"
  it "first_name should not be empty"
  it "last_name should not be empty"
  it "email should not be empty"
  it "gender should not be empty"

  it "user_id should exist in user Table or model"
  it "email should be unique"
  it "user_id should be unique"

end
