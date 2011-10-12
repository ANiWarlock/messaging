class PostsController < ApplicationController

  def create
     @pos = Post.create(params[:post])
    if @pos.save
      redirect_to(:back)
    end
  end
  def show
     @post = Post.all.reverse
     @user = User.all
    render 'mail/mail'
  end

end
