class Author < ApplicationRecord
  belongs_to :user
  has_many :books, dependent: :delete_all

  validates :country, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :user_id, presence: true

end
