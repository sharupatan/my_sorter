class BooksController < ApplicationController
	before_action :set_book, only: [:show, :edit, :update, :destroy]

	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			flash[:notice] = t 'book_add'
			redirect_to books_path
		else
			render :new, status: 422
		end
	end

	def show
	end

	def edit
	end

	def update
		if @book.update(book_params)
			flash[:notice] = t 'book_update'
			redirect_to books_path
		else
			render :edit, status: 422
		end
	end

	def destroy
		@book.destroy
		flash[:notice] = t 'book_delete'
		redirect_back(fallback_location: root_path)
	end

	private

	def set_book
		@book = Book.find(params[:id])
	end

	def book_params
		params.require(:book).permit(:name, :price, :status)
	end
end