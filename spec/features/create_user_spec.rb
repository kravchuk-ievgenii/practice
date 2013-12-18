require 'spec_helper'

describe "create new user"do

  before {visit new_user_path}

  let(:submit) { "Create User" }

  describe "with valid user name" do
    before do
        fill_in "Name",  with: "example"
       
      end

     it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
  end

  describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end
end