@products = [
  { reference_number: 1231, name: "Super Lite Mat", price: 10 },
  { reference_number: 1232, name: "Power Mat", price: 20 },
  { reference_number: 1233, name: "Block", price: 30 },
  { reference_number: 1234, name: "Meditation cushion", price: 30 },
  { reference_number: 1235, name: "The best T-shirt", price: 200 },
  { reference_number: 1236, name: "The cutest yoga pants", price: 300 },
  { reference_number: 1237, name: "Bring Yoga To Life", price: 30 },
  { reference_number: 1238, name: "Light On Yoga", price: 10 }
]

reference_number = [1235, 1238, 1231]
shopping_chart = []

@products.each_with_index do |product, index|
  for index in 0...reference_number.length
    if product[:reference_number] == reference_number[index]
      shopping_chart << {reference_number: product[:reference_number], name: product[:name], price: product[:price]}
    end
  end
end

puts shopping_chart
