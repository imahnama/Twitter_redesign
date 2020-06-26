class User < ApplicationRecord
  has_many :opinions, foreign_key: 'AuthorId', class_name: 'Opinion'
  has_many :followed, foreign_key: 'Followerid', class_name: 'Following'
  has_many :followers, foreign_key: 'Followedid', class_name: 'Following'

  validates :Username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 50 }
  validates :FullName, presence: true, length: { minimum: 3, maximum: 100 }

  def self.all_users(user_id)
    User.where('id != ?', user_id)
  end
end
