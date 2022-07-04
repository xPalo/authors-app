class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :authors

  scope :with_author, -> { where.not(authors: nil) }

  def author_count
    self.authors.count
  end

  def self.without_author
    where(authors: nil)
  end
end
