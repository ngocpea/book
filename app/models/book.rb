class Book
  include Mongoid::Document
  field :title, type: String
  field :author, type: String

  belongs_to :user

  validates :title, presence: true
end
