class BeautyEventsController < ApplicationController
  before_action :authenticate_user!

  def show
    @beauty_events = current_user.beauty_events.order('created_at DESC')
  end

  def new
    @beauty_event = BeautyEvent.new
  end

  def create
    @beauty_event = BeautyEvent.new(beauty_event_params)
    if @beauty_event.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def beauty_event_params
    params.require(:beauty_event).permit(:beauty_cate_id, :started_at, :place, :memo, :cost, :status_id).merge(user_id: current_user.id)    
  end
end
