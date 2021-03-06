require 'spec_helper'

describe "User pages" do
  subject { page }

  describe "signup page" do

    before { visit signup_path }
    it { should have_selector('h1', text: 'Sign up') }
    it { should have_title('Sign up')}

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in 'Name',           with: "Harpreet"
        fill_in 'Email',          with: "singh.harry@gmail.com"
        fill_in 'Password',       with: "foobar"
        fill_in 'Password confirmation',   with: "foobar"
      end
      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user)}
    before { visit user_path(user) }

    it { should have_selector('h1', text: user.name) }
    it { should have_title(user.name) }
  end
end
