class CodeSchoolsController < ApplicationController
  before_action :set_code_school, only: [:show, :update, :destroy]

  # GET /code_schools
  def index
    @code_schools = CodeSchool.all

    render json: @code_schools
  end

  # GET /code_schools/1
  def show
    render json: @code_school
  end

  # POST /code_schools
  def create
    @code_school = CodeSchool.new(code_school_params)

    if @code_school.save
      render json: @code_school, status: :created, location: @code_school
    else
      render json: @code_school.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /code_schools/1
  def update
    if @code_school.update(code_school_params)
      render json: @code_school
    else
      render json: @code_school.errors, status: :unprocessable_entity
    end
  end

  # DELETE /code_schools/1
  def destroy
    @code_school.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_school
      @code_school = CodeSchool.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def code_school_params
      params.require(:code_school).permit(:name, :description)
    end
end
