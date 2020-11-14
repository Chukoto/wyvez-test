class PapaEventsController < ApplicationController
  before_action :authenticate_user!
  def show
    @papa_events = current_user.papa_events.where(papa_id: params[:papa_id])
  end

  def new
    @papa_event = current_user.papa_events.new
  end

  def create
    @papa_event = PapaEvent.new(papa_event_params)
    if @papa_event.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def papa_event_params
    params.require(:papa_event).permit(:started_at, :finished_at, :todo, :place, :expected_reward, :reward).merge(user_id: current_user.id, papa_id: params[:papa_id])
  end
end
