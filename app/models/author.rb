class Author < ApplicationRecord
  belongs_to :user
  has_many :books, dependent: :delete_all
end
