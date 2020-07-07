class Opinion < ApplicationRecord
  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
  
  belongs_to :Author, foreign_key: 'AuthorId', class_name: 'User', dependent: :destroy
end
