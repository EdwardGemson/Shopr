class UsersController < ApplicationController
  skip_before_action :ensure_current_user
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      flash[:notice] = "Thanks for registering {user.name}!"
      redirect_to root_path
    else
      render :new
      flash[:notice] = "Registration failed: Please try again"
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    @user.name = @user.name.capitalize
  end
#unnecessary until we add more params
  # def edit
  #   @user = User.find(params[:id])
  # end

  # def update
  #   @user =User.find(params[:id])
  # end

  def destroy

  end

  private
  def users_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end