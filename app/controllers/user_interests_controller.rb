class UserInterestsController < ApplicationController
  before_action :set_user_interest, only: [:show, :update, :destroy]

  # GET /user_interests
  def index
    @user_interests = UserInterest.all

    render json: @user_interests
  end

  # GET /user_interests/1
  def show
    render json: @user_interest
  end

  # POST /user_interests
  def create
    @user_interest = UserInterest.new(user_interest_params)

    if @user_interest.save
      render json: @user_interest, status: :created, location: @user_interest
    else
      render json: @user_interest.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_interests/1
  def update
    if @user_interest.update(user_interest_params)
      render json: @user_interest
    else
      render json: @user_interest.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_interests/1
  def destroy
    @user_interest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_interest
      @user_interest = UserInterest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_interest_params
      params.require(:user_interest).permit(:interest_id, :user_id, :experience, :expertise, :want_to_teach, :want_to_learn)
    end
end
