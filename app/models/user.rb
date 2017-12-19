class User < ApplicationRecord
  has_many :posts

  validates :name, presence: true,
                   uniqueness: { case_sensitive: false },
                   length: { minimum: 3, maximum: 16 },
                   format: { with: /\w/ }
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
