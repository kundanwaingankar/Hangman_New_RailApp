require 'spec_helper'

describe User do
  before do
    @user = User.new(user_name: "Example User", password: "password1234")

  end
  subject{@user}
  it { should respond_to(:user_name) }
  it { should respond_to(:password) }
  it { should be_valid }

  context "user_name should not be blank" do
    before { @user.user_name = " "}
    it { should_not be_valid }
  end

  context "user_name length should not be greater than 25" do
    before { @user.user_name = "sgsgsgsgsgsgsshddhdhhdhhdhdhhdhhdhhdhhdhdhddhddhdhdhdhdhd "}
    it { should_not be_valid }
  end

  context "password should not be blank" do
    before { @user.password = " "}
    it { should_not be_valid }
  end

  context "password length should be greater than or equal to six" do
    before { @user.password = "pass"}
    it { should_not be_valid }
  end

  context "password length should not be greater than 25" do
    before { @user.password = "pass4242bbsbsbsbs35434bvzbzbzbzbzbzbzbzbzbzbzb"}
    it { should_not be_valid }
  end

  context "user_name should not be greater than 25 characters" do
    before { @user.user_name = "sgsgsgsgsgsgsshddhdhhdhhdhdhhdhhdhhdhhdhdhddhddhdhdhdhdhd "}
    it { should_not be_valid }
  end

  context "password should contain atleast one number" do
    before { @user.password = "pass2222"}
    it { should be_valid }
  end

end
