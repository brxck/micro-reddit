class Post < ApplicationRecord
  belongs_to :user

  validates :title, :user, presence: true
  validates :text, presence: true, unless: Proc.new { |p| p.link.present? }
  validates :link, presence: true, unless: Proc.new { |p| p.text.present? }
end
