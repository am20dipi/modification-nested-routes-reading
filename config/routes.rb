Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :authors, only: [:show, :index] do
    resources :posts, only: [:show, :index, :new, :edit]
  end
  # '/authors/:author_id/posts/new'  new_author_post_path  NEW
  # '/authors/:author_id/post'  author_post_path(post)  SHOW 
  # '/authors/:author_id/posts author_posts_path   INDEX
  # '/authors/:author_id/posts/edit' edit_author_post_path(post)  EDIT
  

  resources :posts 
end
