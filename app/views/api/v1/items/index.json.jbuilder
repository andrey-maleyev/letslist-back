json.items do
    json.array! @items do |item|
      json.extract! item, :id, :name, :is_default
    end
  end