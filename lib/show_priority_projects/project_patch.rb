require_dependency 'project'

module ShowPriorityProjects
  module ProjectPatch
    extend ActiveSupport::Concern

    included do
      unloadable
      has_one :priority_project, dependent: :destroy
      safe_attributes :priority_project_attributes
      accepts_nested_attributes_for :priority_project
    end

    def priority
      priority_project.try(:is_priority?)
    end
  end
end

ActionDispatch::Reloader.to_prepare do
  unless Project.included_modules.include?(ShowPriorityProjects::ProjectPatch)
    Project.send(:include, ShowPriorityProjects::ProjectPatch)
  end
end
