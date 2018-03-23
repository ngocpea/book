class BooksController < ApplicationController
  before_action :authenticate_user!
  

  def index
    @book = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = current_user.books.create(book_params)
    
    
    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  end

  def show
    @book = Book.find(params[:id])
  end

private

  def book_params
    params.require(:book).permit(:title, :author)
  end
end