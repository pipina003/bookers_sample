class BooksController < ApplicationController
  def top
  end

  def new
    #Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @book=Book.new
  end

  def create
    #データを受け取り新規登録するためのインスタンス作成
    book=Book.new(book_params)
    #データをデータベースに保村するためのメソッド実行
    book.save
    #トップ画面へリダイレクト
    redirect_to'/top'
  end

  def index
    @books=Book.all
  end

  def show
  end

  def edit
  end

  private
  #ストロングパラメータ
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
