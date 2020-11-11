class PapasController < ApplicationController
before_action :authenticate_user!, except: [:index, :show] 

  def show
    @papas = Papa.all   
  end

  def new
    @papa = Papa.new
  end

  def create
    @papa = Papa.new(papa_params)
    if @papa.save
      redirect_to papas_path
    else
      render :new
    end
  end

  private

  def papa_params
    params.require(:papa).permit(:image, :name, :age_id, :marriage_id, :child_id, :memo).merge(user_id: current_user.id)
  end
end
