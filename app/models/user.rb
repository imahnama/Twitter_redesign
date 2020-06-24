class User < ApplicationRecord
  has_many :followed, foreign_key: 'Followerid', class_name: 'Following'
  has_many :followers, foreign_key: 'Followedid', class_name: 'Following'

  def self.all_users(user_id)
    User.where('id != ?', user_id)
  end
end
