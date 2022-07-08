class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :authors

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  scope :with_author, -> { where.not(authors: nil) }

  def author_count
    self.authors.count
  end

  def self.without_author
    where(authors: nil)
  end
end
