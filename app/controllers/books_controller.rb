class BooksController < ApplicationController
  #before_filter :authenticate_user!, except: [:show, :index]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)

    if @book.save
      redirect_to root_path, :notice => 'book has been create.'
    else
      render plain: 'not saving to db'
    end
  end

  def show
    @book = Book.find(params[:id])
  end
end

private

def book_params
  params.require(:book).permit(:title, :author)
end