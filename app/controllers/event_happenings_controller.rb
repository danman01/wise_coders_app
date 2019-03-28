class EventHappeningsController < ApplicationController
  before_action :set_event_happening, only: [:show, :update, :destroy]

  # GET /event_happenings
  def index
    @event_happenings = EventHappening.all

    render json: @event_happenings
  end

  # GET /event_happenings/1
  def show
    render json: @event_happening
  end

  # POST /event_happenings
  def create
    @event_happening = EventHappening.new(event_happening_params)

    if @event_happening.save
      render json: @event_happening, status: :created, location: @event_happening
    else
      render json: @event_happening.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /event_happenings/1
  def update
    if @event_happening.update(event_happening_params)
      render json: @event_happening
    else
      render json: @event_happening.errors, status: :unprocessable_entity
    end
  end

  # DELETE /event_happenings/1
  def destroy
    @event_happening.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_happening
      @event_happening = EventHappening.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_happening_params
      params.require(:event_happening).permit(:event_id, :happening_id, :user_id, :start_time, :end_time, :notes)
    end
end
