json.extract! shipper, :id, :name, :url, :created_at, :updated_at
json.url shipper_url(shipper, format: :json)
