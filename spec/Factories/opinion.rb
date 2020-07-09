FactoryBot.define do
  factory :opinion do
    Text { 'Hello Universe' }
    AuthorId { User.first.id }
  end
end
