json.extract! job, :id, :status, :description, :city_id, :created_at, :updated_at
json.url job_url(job, format: :json)
