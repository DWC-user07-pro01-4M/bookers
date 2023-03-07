Rails.application.routes.draw do
  # get 'books/new'
  # # 投稿機能
  # post 'books' => 'books#create'
  # # 一覧画面
  # get 'books' => 'books#index'
  # # 詳細画面
  # get 'books/:id' => 'books#show', as: 'book'
  # # 編集機能
  # get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  # # 更新機能
  # patch 'books/:id' => 'books#update', as: 'update_book'
  # # 削除機能
  # delete 'books/:id' => 'books#destroy', as: 'destroy_book'

  get '/top' => 'homes#top'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
