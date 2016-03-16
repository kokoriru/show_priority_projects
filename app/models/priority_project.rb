class PriorityProject < ActiveRecord::Base
  unloadable
  belongs_to :project
end
