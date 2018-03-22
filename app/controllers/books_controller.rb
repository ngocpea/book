class BooksController < ApplicationController
  #before_filter :authenticate_user!, except: [:show, :index]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params[:book])
    if @book.save
      flash[:notice] = "book has been created."
      redirect_to @book
    else
      render "new"
    end
  end

  # def show
  #   @book = Book.find(params[:id])
  # end
end
