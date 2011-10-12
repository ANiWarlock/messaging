class UsersController < ApplicationController


  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @pos = Post.new
    @post = Post.all.reverse

  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      redirect_to(@user,:notice => 'User was successfully created.')
    else
      @title = "Sign up"
      render 'new'
    end
  end

end
