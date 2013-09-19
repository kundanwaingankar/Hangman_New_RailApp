class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  def index
=begin
    100.times do |i|
      u = User.new(user_name: "loginname#{i}", password: "password#{i}")
      u.build_profile(first_name: "firstname", last_name: "lastname", gender: true, email: "asas#{i}@gmail.com" )
      u.build_game(played: 0, win: 0, lose: 0)
      u.save
    end
=end
    @users=User.all
  end

  # GET /users/1
  def show

  end

  # GET /users/new
  def new
     @user=User.new
     @user.build_profile
 end

  # GET /users/1/edit
  def edit

  end

  # POST /users
  def create

    @user = User.new(user_params)

    if @user.save
      UserMailer.welcome_email(@user).deliver
      redirect_to @user
    else
      render action: 'new'
    end
  end

  # PUT /users/1
  def update

    if @user.update(user_params)
      redirect_to @user
    else
      render action: 'edit'
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:user_name, :password, profile_attributes: [:id, :first_name, :last_name, :email, :gender])
  end

end
