require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase
  should belong_to(:user)
  should belong_to(:friend)

  test "creating a friendship witout raising an exception"
  assert nothing_raised do
	UserFriendship.create user: users(:jason) , friends: users(:mike)
  end
end
