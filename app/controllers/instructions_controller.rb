class InstructionsController < ApplicationController
 
  def show
    @instruction = Instruction.find(params[:id])
    @intructions = Instruction.all
   
  end

end
