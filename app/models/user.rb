class User < ApplicationRecord

  has_many :opinions, foreign_key: 'AuthorId', class_name: 'Opinion'

  has_many :active_followings, class_name: 'Following', foreign_key: 'follower_id', dependent: :destroy
  has_many :passive_followings, class_name: 'Following', foreign_key: 'followed_id', dependent: :destroy

  has_many :following, through: :active_followings, source: :followed
  has_many :followers, through: :passive_followings, source: :follower

  validates :Username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 50 }
  validates :FullName, presence: true, length: { minimum: 3, maximum: 100 }

  def self.all_users(user_id)
    User.where('id != ?', user_id)
  end

  def follow(user)
    active_followings.create(followed_id: user.id)
  end

  def unfollow(user)
    active_followings.find_by(followed_id: user.id).destroy
  end

  def following?(user)
    following.include?(user)
  end
end
