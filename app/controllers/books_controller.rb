class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find_by(id: params[:id])
  end

  def create
    @book = Book.new(title: params[:title], body: params[:body])
    @book.save
    redirect_to("/books/:id")
  end

  private
    def book_params
      params.permit(:title, :body)
    end

end
