require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:Username) }
    it { should validate_presence_of(:FullName) }
    # it { should validate_presence_of(:Username).is_at_least(3) }
    # it { should validate_presence_of(:FullName).is_at_least(3) }
    it { should validate_uniqueness_of(:Username) }
  end

  describe 'associations' do
    it { should have_many(:opinions).with_foreign_key(:AuthorId).class_name('Opinion') }
    it { should have_many(:following).with_foreign_key(:follower_id).class_name('Following') }
    it { should have_many(:followers).with_foreign_key(:Followed_id).class_name('Following') }
  end
end
