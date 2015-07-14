class Instruction < ActiveRecord::Base
  belongs_to :stage
  belongs_to :project
end
