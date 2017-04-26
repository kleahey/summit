json.extract! schedule, :id, :start_time, :end_time, :teammember_id, :location_id, :role_id, :session_id, :created_at, :updated_at
json.url schedule_url(teammember_schedule, format: :json)
