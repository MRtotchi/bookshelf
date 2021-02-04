class RentalBooksController < ApplicationController

    def create
        Rental.create(book_id: , user_id: current_user.id)
    end

    def update
        @book = Book.find(params[:id])
        @book.rental_user=current_user
        @book.save
        redirect_to book_path(@book), notice: '書籍の貸し出し処理を行いました'
    end
    
    def destroy
        @book = Book.find(params[:id])
        @book.rental_user=nil
        @book.save
        redirect_to books_path, notice: '書籍の返却処理を行いました'
    end
end