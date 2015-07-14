class Project < ActiveRecord::Base
  has_many :stages
  has_many :users, through: :user_projects
  has_many :user_projects
  has_many :instructions, through: :stages

end
