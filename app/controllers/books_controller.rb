class BooksController < ApplicationController
    # 上・投稿一覧/下・投稿機能
  def index
    @books = Book.all
    @book = Book.new
  end

  # 保存機能・バリデーション
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id), notice: "Book was successfully created."
    else
      @books = Book.all
      render :index
    end
  end

  # 詳細画面
  def show
    @book = Book.find(params[:id])
    @book = Book.new
  end
  # 編集画面
  def edit
    @book = Book.find(params[:id])
  end
  # 更新機能
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book),notice: "Book was successfully updated."
  end
  # 削除機能
  def destroy
    books = Book.find(params[:id])
    books.destroy
    flash[:notice]  = "Book was successfully destroyed."
    redirect_to books_path
  end
  # ストロングパラメータ
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
