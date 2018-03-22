class Book
  has_many :users
  
  include Mongoid::Document
  field :title, type: String
  field :author, type: String
end
