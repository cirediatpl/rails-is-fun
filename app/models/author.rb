class Author < ApplicationRecord

  has_many :author_books
  has_many :books, through: :author_books

  validates :name, presence: true
  validates :birth_year, numericality: { greater_than: 0, less_than_or_equal_to: 2019 }

end
