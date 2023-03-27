json.extract! project, :id, :name, :project_status, :created_at, :updated_at
json.url project_url(project, format: :json)
