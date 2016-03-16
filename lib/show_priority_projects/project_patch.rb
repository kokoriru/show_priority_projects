require_dependency 'project'

module ShowPriorityProjects
  module ProjectPatch
    extend ActiveSupport::Concern

    included do
      unloadable
      has_one :priority_project, dependent: :destroy
    end

    def priority?
      priority_project.try(:is_priority?)
    end
  end
end

ActionDispatch::Reloader.to_prepare do
  unless Project.included_modules.include?(ShowPriorityProjects::ProjectPatch)
    Project.send(:include, ShowPriorityProjects::ProjectPatch)
  end
end
