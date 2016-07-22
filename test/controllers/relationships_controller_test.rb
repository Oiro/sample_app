require'test_helper'

class RelationshipsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  	test "create should require logged-in user" do
		assert_no_difference 'Relationship.count' do
		post :create
	end
		assert_redirected_to login_url
	end

	test "destroy should require logged-in user" do
		assert_no_difference 'Relationship.count' do
		# delete :destroy, id: relationships(:one)
		delete :destroy, id: relationships(:one)
		# user.delete
		# user.destroy([:user][:id])
		# find(params[:user][:id])
	end
		assert_redirected_to login_url
	end
end
