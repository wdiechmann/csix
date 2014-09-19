json.array!(@jobbers) do |jobber|
  json.extract! jobber, :id, :first_job_at, :last_job_at, :person_id
  json.url jobber_url(jobber, format: :json)
end
