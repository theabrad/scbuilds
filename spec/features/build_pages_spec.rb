require 'spec_helper'

describe "Build Pages" do
  let(:user) { FactoryGirl.create(:user) }

  before { sign_in user }
 
  describe "Create a Build" do
    before(:all) do 
      visit new_build_path
    end

    let(:build) { FactoryGirl.create(:build) }

    describe "Fill in Build" do
      it "fill's in the build with correct information" do
        fill_in "Title", with: build.title
	fill_in "Body", with:  build.body

	click_button "Create Build"
      end
    end
  end
end
