json.extract! petition, :id, :name, :description, :created_at, :updated_at
json.url petition_url(petition, format: :json)