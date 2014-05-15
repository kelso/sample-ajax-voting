class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def like
    @post = Post.find params[:id]
    @post.likes_count += 1
    @post.save

    flash[:notice] = "Like bol zaznamenany"
    
    respond_to do |format|
      format.html { redirect_to posts_url }
      format.js
    end
  end

  def dislike
    # TODO: zapocitat hlas

    flash[:notice] = "Dislike bol zaznamenany"
    redirect_to posts_url
  end

end
