require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "Home page" do
    before {visit root_path}
    it { should have_selector('h1', text: 'Sample App') }

    it { should have_title('RoR Tutorial Sample App') }
  end
  
  describe "Help page" do
    before {visit help_path}

    it { should have_content('Help') }
  end

  describe "About Us" do
    before {visit about_path}

    it { should have_content('About Us') }

  end

  describe "Contact" do
    before {visit contact_path}

    it { should have_selector('h1', text: 'Contact') }
    it { should have_title('Contact') }

  end


end
