class UserFriendship < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :friend , class_name: 'User' ,foreign_id: 'friend_id'


  attr_accessible :user,:friend
end
