class InstructionsController < ApplicationController
 
  def show
    @instruction = Instruction.find(params[:id])
    @intructions = Instruction.all
    @stage = Stage.find(params[:id])
    @stages = Stage.all
  end

end
