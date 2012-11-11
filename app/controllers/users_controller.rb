class UsersController < ApplicationController
  def index
    @users = User.all #array of all users
  end

  def new
    @user = User.new #new empty instance of user
  end

  def edit
    @user = User.find(params[:id]) #assumes editing new exisitng record
                                    #finds user number, sets up instance variable
  end

  def show
     @user = User.find(params[:id]) #going to be rendering different templates
  end

  def create
    @user = User.new(params[:user])
    
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

end
