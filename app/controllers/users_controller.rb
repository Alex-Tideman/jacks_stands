class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome back #{@user.email}!"
      redirect_to @user
    else
      flash[:error] = "Invalid input - Please try creating user again"
      render :new
    end
  end

  def show
    if current_user == nil
      redirect_to '/404'
    else
      @user = User.find(current_user.id)
    end
  end

  def edit
    if current_user.id == params[:id].to_i
      @user = User.find(current_user.id)
    else
      flash[:error] = "That's not you!"
      if current_admin?
        redirect_to admin_dashboard_path
      else
        redirect_to profile_path
      end
    end
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(username: params[:users][:email],
                    password: params[:users][:password])
      flash[:notice] = "Profile updated!"
      if current_admin?
        redirect_to admin_dashboard_path
      else
        redirect_to profile_path
      end
    else
      flash[:error] = "Invalid input - Please try updating trip again"
      render :edit
    end
  end

  private

  def user_params
    params.require(:users).permit(:email, :password)
  end

end