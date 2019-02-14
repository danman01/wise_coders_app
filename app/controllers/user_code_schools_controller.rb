class UserCodeSchoolsController < ApplicationController
  before_action :set_user_code_school, only: [:show, :update, :destroy]

  # GET /user_code_schools
  def index
    @user_code_schools = UserCodeSchool.all

    render json: @user_code_schools
  end

  # GET /user_code_schools/1
  def show
    render json: @user_code_school
  end

  # POST /user_code_schools
  def create
    @user_code_school = UserCodeSchool.new(user_code_school_params)

    if @user_code_school.save
      render json: @user_code_school, status: :created, location: @user_code_school
    else
      render json: @user_code_school.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_code_schools/1
  def update
    if @user_code_school.update(user_code_school_params)
      render json: @user_code_school
    else
      render json: @user_code_school.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_code_schools/1
  def destroy
    @user_code_school.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_code_school
      @user_code_school = UserCodeSchool.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_code_school_params
      params.require(:user_code_school).permit(:user_id, :code_school_id, :start_date, :end_date)
    end
end
