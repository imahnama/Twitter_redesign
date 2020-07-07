require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:Username) }
    it { should validate_presence_of(:FullName) }
    it { should validate_length_of(:Username).is_at_least(3) }
    it { should validate_length_of(:FullName).is_at_least(3) }
    it { should validate_uniqueness_of(:Username) }
  end

  describe 'associations' do
    it { should have_many(:opinions).with_foreign_key(:AuthorId).class_name('Opinion') }
    it { should have_many(:active_followings).with_foreign_key(:follower_id).class_name('Following') }
    it { should have_many(:passive_followings).with_foreign_key(:followed_id).class_name('Following') }
    it { should have_many(:following).through(:active_followings).source(:followed) }
    it { should have_many(:followers).through(:passive_followings).source(:follower) }
  end

  describe 'user class methods' do
    before(:each) do
      @user1 = User.create!(Username: 'Sun', FullName: 'Ali')
      @user2 = User.create!(Username: 'Odong', FullName: 'Mike')
    end
    describe 'follow' do
      it 'checks if current user has followed user' do
        actual = @user1.follow(@user2)
        expect(@user1.following?(@user2)).to eq(true)
      end
    end
    describe 'unfollow' do
      it 'checks if current user has unfollowed user' do
        actual = @user1.follow(@user2)
        unfollow = @user1.unfollow(@user2)
        expect(@user1.following?(@user2)).to eq(false)
      end
    end
end
end
