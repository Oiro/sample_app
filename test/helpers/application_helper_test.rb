require'test_helper'
class ApplicationHelperTest < ActionView::TestCase
	# include ApplicationHelper
test "full title helper" do
assert_equal full_title("Contact"), "Ruby on Rails Tutorial Sample App | Contact"
assert_equal full_title("Help"), "Ruby on Rails Tutorial Sample App | Help"
# assert_equal full_title("Sign up"), "Sign up | Ruby on Rails Tutorial Sample App"
end

end