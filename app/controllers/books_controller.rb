class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  # 保存機能
  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end
  # 投稿一覧
  def index
    @books = Book.all
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
    redirect_to book_path(book.id)
  end
  # ストロングパラメータ
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
