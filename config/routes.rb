Rails.application.routes.draw do
  get 'books/new'
  # 投稿機能
  post 'books' => 'books#create'
  # 一覧画面
  get 'books' => 'books#index'
  get 'books/show'
  get 'books/edit'
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
