json.extract! donor, :id, :first_name, :last_name, :email, :phone_number, :index, :created_at, :updated_at
json.url donor_url(donor, format: :json)
