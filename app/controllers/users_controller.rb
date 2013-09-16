class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end

  def new
    #@users = User.new
    #@users.build_profile
  end

  def create
    @users = User.new
    @users.user_name = params[:username]
    @users.password = params[:password]
    @users.build_profile
    @users.profile.first_name = params[:first_name]
    @users.profile.last_name = params[:last_name]
    @users.profile.gender = params[:gender]
    @users.profile.email = params[:email]

    if @users.save
      redirect_to :action => 'index'
      flash[:notice] = "Successfully saved!"
    else
      render :action => 'new'
    end
  end

  def edit
    @users = User.find(params[:id])
    puts @users.profile.first_name
  end

  def update
    @users = User.find(params[:id])
    if @users.update_attributes(user_params)
      redirect_to :action => 'show', :id => @users
      flash[:notice] = "Successfully updated..."
    else
      render :action => 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private
  def set_user
    @users = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :password, profile_attributes: [:id, :first_name, :last_name, :email, :gender])
  end
end
