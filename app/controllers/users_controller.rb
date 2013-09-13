class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

=begin
    100.times do |i|
      u = User.new(user_name: "loginname#{i}", password: "password#{i}")
      u.build_profile(first_name: "firstname", last_name: "lastname", gender: true, email: "asas#{i}@gmail.com" )
      u.build_game(played: i, win: i, lose: i)
      u.save
    end
=end

  #show all Users
  def index
    @users = User.all
  end

  #new user
  def new
    @user = User.new
    @user.build_profile
    @user.build_game(win: 0, lose: 0, played: 0)
  end

  # show a user record
  def show
  end

  # create or save user
  def create

    puts params[:user]
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # delete a user
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_path }
      format.json { head :no_content }
    end
  end

  # edit user
  def edit
  end

  #update user data
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:user_name, :password, profile_attributes: [:id, :first_name, :last_name, :email, :gender])
  end

end
