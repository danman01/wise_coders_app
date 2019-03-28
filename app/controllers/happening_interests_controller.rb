class HappeningInterestsController < ApplicationController
  before_action :set_happening_interest, only: [:show, :update, :destroy]

  # GET /happening_interests
  def index
    @happening_interests = HappeningInterest.all

    render json: @happening_interests
  end

  # GET /happening_interests/1
  def show
    render json: @happening_interest
  end

  # POST /happening_interests
  def create
    @happening_interest = HappeningInterest.new(happening_interest_params)

    if @happening_interest.save
      render json: @happening_interest, status: :created, location: @happening_interest
    else
      render json: @happening_interest.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /happening_interests/1
  def update
    if @happening_interest.update(happening_interest_params)
      render json: @happening_interest
    else
      render json: @happening_interest.errors, status: :unprocessable_entity
    end
  end

  # DELETE /happening_interests/1
  def destroy
    @happening_interest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_happening_interest
      @happening_interest = HappeningInterest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def happening_interest_params
      params.require(:happening_interest).permit(:happening_id, :interest_id)
    end
end
