json.extract! instructor, :id, :name, :phone, :speciality, :salary, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)
