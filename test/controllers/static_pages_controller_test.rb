require'test_helper'
class StaticPagesControllerTest < ActionController::TestCase

test "should get home" do
	get :home
	assert_response :success
# assert_select "title 'Home'",  "Home | Ruby on Rails Tutorial Sample App"
	# assert_select "title",  "Home | Ruby on Rails Tutorial Sample App"
	# assert_select "title", "Ruby on Rails Tutorial Sample App | Home"
	assert_select "title", "Ruby on Rails Tutorial Sample App"
end

test "should get help" do
	get :help
	assert_response :success
# assert_select "title 'Help'", "Help | Ruby on Rails Tutorial Sample App"
# assert_select "'Help", "Help | Ruby on Rails Tutorial Sample App"
	assert_select "title", "Ruby on Rails Tutorial Sample App | Help"
end

test "should get about" do
	get :about
	assert_response :success
# assert_select "title 'About'", "About | Ruby on Rails Tutorial Sample App"
# assert_select "'About'", "About | Ruby on Rails Tutorial Sample App"
	assert_select "title", "Ruby on Rails Tutorial Sample App | About"
end

test "should get contact" do
	get :contact
	assert_response :success
# assert_select "title 'Contact'", "Contact | Ruby on Rails Tutorial Sample App"
# assert_select "'Contact'", "Contact | Ruby on Rails Tutorial Sample App"
	assert_select "title", "Ruby on Rails Tutorial Sample App | Contact"
end
end
