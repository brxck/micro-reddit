class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :text, :user, :post, presence: true
end
