class PapasController < ApplicationController
before_action :authenticate_user!, except: [:index, :show] 
before_action :specified_papa, only: [:show, :edit, :update]
before_action :specified_user, only: [:edit]

  def show
  end

  def new
    @papa = Papa.new
  end

  def create
    @papa = Papa.new(papa_params)
    if @papa.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @papa.update(papa_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  private

  def papa_params
    params.require(:papa).permit(:image, :name, :age_id, :marriage_id, :child_id, :memo).merge(user_id: current_user.id)
  end

  def specified_papa
    @papa = Papa.find(params[:id])
  end

  def specified_user
    redirect_to root_path unless current_user.id == @papa.user_id
  end
end
