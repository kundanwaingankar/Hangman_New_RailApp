require 'spec_helper'
RSpec.configure {|c| c.before { expect(controller).not_to be_nil }}
describe UsersController do

  describe "GET index" do
    it "has a 200 status code" do
      get :index
     (response.status).should == 200
    end
  end
  describe "GET new" do
    it "has a 200 status code" do
      get :new
      (response.status).should == 200
    end
  end
  describe "Post create" do
    it "has a 200 status code" do
      post :create
      (response.status).should == 302
    end
  end

end
