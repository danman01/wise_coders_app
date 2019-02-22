class EventRepeatsController < ApplicationController
  before_action :set_event_repeat, only: [:show, :update, :destroy]

  # GET /event_repeats
  def index
    @event_repeats = EventRepeat.all

    render json: @event_repeats
  end

  # GET /event_repeats/1
  def show
    render json: @event_repeat
  end

  # POST /event_repeats
  def create
    @event_repeat = EventRepeat.new(event_repeat_params)

    if @event_repeat.save
      render json: @event_repeat, status: :created, location: @event_repeat
    else
      render json: @event_repeat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /event_repeats/1
  def update
    if @event_repeat.update(event_repeat_params)
      render json: @event_repeat
    else
      render json: @event_repeat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /event_repeats/1
  def destroy
    @event_repeat.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_repeat
      @event_repeat = EventRepeat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_repeat_params
      params.require(:event_repeat).permit(:event_id, :days_of_week, :weeks_of_month, :months_of_year, :repeat_start_date, :repeat_end_date, :number_of_repeats)
    end
end
