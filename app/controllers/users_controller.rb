class UsersController < ApplicationController
  #before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
    respond_to do |format|
      format.json { render :json => @users }
      format.csv { send_data @users.to_csv }
      #format.csv { render text: @users.to_csv }
      format.xls { send_data @users.to_csv(col_sep: "\t")  }
    end
    #render json: @users
  end

  # GET /users/1
  def show
      @user = User.find(params[:id])
      render json: @user
  end

  def export

      @user = User.where(id: params[:id])
      respond_to do |format|
        format.json { render :json => @user }
        format.csv { send_data @user.to_csv }
        format.xls { send_data @user.to_csv(col_sep: "\t")  }
      end

  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :role, :address, :phone, :organization)
    end
end
