require 'spec_helper'

describe User do

  let(:user) { FactoryGirl.create(:user) }

  describe "class methods" do
    before(:each) { user.save }

    describe "#Capitalize_name" do
      it "should be capitalized" do
        expect(User.big(user.name)).to be_eql user.name.capitalize
      end
    end

    describe "#adding_string" do
      it "should include Sir" do
        expect(User.sir(user.name)).to include("Sir")
      end
    end
  end
end







