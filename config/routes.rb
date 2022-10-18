Rails.application.routes.draw do
  get 'books/new'
  post 'books'=>'books#create'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get 'books'=>'books#top'
  #booksで投稿した本の一覧を表示できるようにする
  #homeのようこそのstartからこのbooksに飛べるようにすること
  #booksはまだ仮で書いてる
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get 'top'=>'homes#top'

end
