json.extract! product, :id, :shortdescription, :longdescription, :manufacturer, :partnumber, :sku, :created_at, :updated_at
json.url product_url(product, format: :json)
