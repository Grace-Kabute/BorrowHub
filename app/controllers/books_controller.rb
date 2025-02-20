class BooksController < ApplicationController

  def index
    @books = Book.all
  end
  def show
    @book = Book.find(params[:id])
  end
  def borrow
    book = Book.find(params[:id])
    user = User.find_by(email_address: params[:email_address])

    if user.nil?
      flash[:alert] = "Invalid email"
      redirect_to book_path(book) and return
    end

    if book.borrowings.where(returned_at: nil).exists?
      flash[:alert] = "This book is already borrowed."
    else
      Borrowing.create!(
        user: user,
        book: book,
        borrowed_at: Time.current,
        due_date: 2.weeks.from_now
      )
      flash[:notice] = "Book successfully borrowed!"
    end

    respond_to do |format|
      format.html { redirect_to book_path(book) }
      format.json { render json: { success: true, message: "Book borrowed successfully" }, status: :ok }
    end
  end
  def return
    borrowing = Borrowing.find_by(book_id: params[:id], returned_at: nil)

    if borrowing
      borrowing.update!(returned_at: Time.current)
      flash[:notice] = "Book returned successfully!"
    else
      flash[:alert] = "This book is not currently borrowed."
    end

    redirect_to book_path(params[:id])
  end
end

