class StagesController < ApplicationController

  def show
    @stage = Stage.find(params[:id])
    @stages = Stage.all
  end

end
