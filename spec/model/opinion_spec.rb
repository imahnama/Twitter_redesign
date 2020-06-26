require 'rails_helper'

RSpec.describe Opinion, type: :model do
  describe 'associations' do
    it { belong_to(:Author).with_foreign_key(:AuthorId).class_name('User') }
  end
end
