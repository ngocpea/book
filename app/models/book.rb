class Book
  include Mongoid::Document

  field :title, type: String
  field :author, type: String
  field :slug, type: String

  belongs_to :user, optional: true

  validates :title, presence: true, uniqueness: true
  validates :author, presence: true
end
