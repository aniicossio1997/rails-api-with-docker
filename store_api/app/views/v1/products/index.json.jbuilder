json.products @products do |product|
  json.(product, :name, :description,:price)
end