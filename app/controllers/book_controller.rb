class BookController < ApplicationController
  #before_filter :authenticate_user!, except: [:show, :index]

  def index
  end

  def new

  end

  # def new
  #   @book = Book.new
  # end

  # def create
  #   @book = Book.new(book_params)
  #   if @book.save
  #     flash[:notice] = "book has been created."
  #     redirect_to @book
  #   else
  #     flash.now[:alert] = "Book has not been created."
  #     render "new"
  #   end
  # end

  # def show
  #   @book = Book.find(params[:id])
  # end
end
