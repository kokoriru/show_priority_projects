class PriorityProject < ActiveRecord::Base
  unloadable
  belongs_to :project
  attr_accessible :is_priority
end
