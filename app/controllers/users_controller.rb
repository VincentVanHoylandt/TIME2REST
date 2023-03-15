class UsersController < ApplicationController
  before_action :set_user, only: %i[edit update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.user = current_user
    authorize @user
    if @user.save
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
    authorize @user
    # @experience = Experience.find(params[:id])
  end

  def edit
    authorize @user
  end

  def update
    @user.update(user_params)
    authorize @user
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    authorize @user
    redirect_to users_path, status: :see_other
  end

  def index
    # @mangas = policy_scope(Manga)
    # # cette ligne permet de passer le conflit avec la policy scope
    # if params[:query] == "" || params[:query].nil?
    #   @query = User.all
    # else
    #   @query = User.search_by_******_and_********(params[:query])
    # end
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :job_title, :age)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
