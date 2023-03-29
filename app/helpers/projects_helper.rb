# frozen_string_literal: true

module ProjectsHelper
  def select_values_for_projects
    Project.project_statuses.map { |type| [type.first.humanize.capitalize, type.first] }
  end
end
