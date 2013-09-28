require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  
  subject { page }

  describe "Home page" do
    before { visit root_path }
    it "should have the content 'Sample App'" do
      #visit root_path
      expect(page).to have_content('Sample App')
    end
    
    it "should have the base title" do
     # visit root_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      #visit root_path
      expect(page).not_to have_title('| Home')
    end
    
  end
  
   describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end
    
    it "should have the right title" do
      visit help_path
      expect(page).to have_title("#{base_title} | Help") 
    end
    
  end
  
  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end
    
    it "should have the right title" do
      visit about_path
      expect(page).to have_title("#{base_title} | About")
    end
  end
  
  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_title("Ruby on Rails Tutorial Sample App | Contact") }
  end
    
end
