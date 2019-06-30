class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find[params:id]
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find[params:id]
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to admin_users_path, notice: "ユーザー　「#{@user.name}」を登録しました。"
    else
      render :new
    end 
  end

  def update
    @user = User.find[paramas:id]
  
    if @user.update(user_params)
      redirect_to admin_user_path(@user), notice: "ユーザー　「#{@user.name}」を更新しました。"
    else
      render :new
    end 
  end

  def destory
    @user = User.find[paramas:id]
    @user.destory
    redirect_to admin_user_url, notice: "ユーザー　「#{@user.name}」を削除しました。"
  end

  private

  def user_params
    paramas.require(:user).permit(:first_name, :last_name, :address, :tel, :email, :admin, :password, :password_comfirmation)
  end
end
