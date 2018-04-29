class PostsController < ApplicationController
  layout 'three_column'
  def index
    @post=Post.all
  end
end
