class BooksController < ApplicationController
  def top
  end

  def new
    #Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
  end

  def index
    @books=Book.all
  end

  def show
  end

  def edit
  end
end
