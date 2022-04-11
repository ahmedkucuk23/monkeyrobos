json.extract! contact, :id, :name, :email, :project_name, :project_supply, :project_price, :info, :created_at, :updated_at
json.url contact_url(contact, format: :json)
