require 'rails_helper'

RSpec.describe Following, type: :model do
  describe 'associations' do
    it { belong_to(:Follower).with_foreign_key(:Followerid).class_name('User') }
    it { belong_to(:Followed).with_foreign_key(:Followedid).class_name('User') }
  end

  describe 'validations' do
    it { should validate_presence_of(:follower_id) }
    it { should validate_presence_of(:followed_id) }
  end
end
