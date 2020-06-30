class Following < ApplicationRecord
  belongs_to :Follower, foreign_key: 'Follwerid', class_name: 'User'
  belongs_to :Followed, foreign_key: 'Followedid', class_name: 'User'


  validates :Follwerid, uniqueness: { scope: :Followedid }
  validates :Followedid, uniqueness: { scope: :Followerid }
end
