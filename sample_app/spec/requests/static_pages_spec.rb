require 'rails_helper'
require 'spec_helper'

# RSpec.describe "StaticPages", type: :request do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       get static_pages_index_path
#       expect(response).to have_http_status(200)
#     end
#   end
#end

describe "Static pages" do

	describe "Home page" do
  		it "should have the content 'Sample App'" do
    		visit '/static_pages/home'
    		expect(page).to have_content('Sample App')
		end 

		# it "should have the title 'Home' " do
		# 	visit '/static_pages/home'
		# 	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home ")

		# end

		it "should have the base title " do
			visit '/static_pages/home'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App")
		end

		it "should not have a custom page title " do
			visit '/static_pages/home'
			expect(page).not_to have_title('| Home')
		end

	end

	describe "Hellp page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')

		end

		it "should have the title 'Help' " do
			visit '/static_pages/help'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help ")

		end
	end

	describe "About page" do
		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Us')
		end

		it "should have the title 'About Us' " do
			visit '/static_pages/about'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us ")

		end

	end




end




















