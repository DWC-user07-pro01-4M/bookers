class BooksController < ApplicationController
    # 上・投稿一覧/下・投稿機能
  def index
    @books = Book.all.order(id: :asc)
    @book =Book.new
  end

  # 保存機能・バリデーション
  def create
    book = Book.new(book_params)
    if book.save
      flash[:notice] = "Book was successfully created"
      redirect_to book_path(book.id)
    else
      render :index
    end
  end

  # 詳細画面
  def show
    @book = Book.find(params[:id])
  end
  # 編集画面
  def edit
    @book = Book.find(params[:id])
  end
  # 更新機能
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    flash[:notice] = flash[:notice] = "Book was successfully update"
    redirect_to book_path(book.id)
  end
  # 削除機能
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  # ストロングパラメータ
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
