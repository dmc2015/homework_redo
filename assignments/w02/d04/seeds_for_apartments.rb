require 'ffaker'

def make_buildings(num, buildings)
  num.times do |i|
    id = i + 1
    name = FFaker::Company.name.gsub("'", "")
    address = "#{FFaker::AddressUS.street_address}, #{FFaker::AddressUS.city}, #{FFaker::AddressUS.state_abbr} #{FFaker::AddressUS.zip_code}".gsub("'", "")
    num_floors = rand(10) + 1
    buildings << {id: id, name: name, address: address, num_floors: num_floors}
  end
end

def make_apartments(num_per_building, apartments, buildings)
  id = 0
  buildings.each do |building|
    num_per_building.times do
      id += 1
      floor = rand(building[:num_floors]) + 1
      name = floor * 100 + rand(99)
      price = (rand(29) + 1) * 100
      sqft = (rand(19) + 1) * 100
      bedrooms = rand(4) + 1
      bathrooms = rand(4) + 1
      building_id = building[:id]
      apartments << {id: id, floor: floor, name: name, price: price, sqft: sqft, bedrooms: bedrooms, bathrooms: bathrooms, building_id: building_id}
    end
  end
end

def make_tenants(tenants, apartments)
  id = 0
  apartments.each do |apt|
    next if rand(100) < 10
    (rand(apt[:bedrooms] * 2) + 1).times do
      id += 1
      name = FFaker::Name.name.gsub("'", "")
      age = rand(100) + 1
      gender = ["Male", "Female"].sample
      apartment_id = apt[:id]
      tenants << {id: id, name: name, age: age, gender: gender, apartment_id: apartment_id}
    end
  end
end

buildings = []
apartments = []
tenants = []

make_buildings(10, buildings)
make_apartments(200, apartments, buildings)
make_tenants(tenants, apartments)


File.open("apartment_seeds.sql","w") do |file|
  file.puts("TRUNCATE TABLE buildings CASCADE;")
  file.puts("TRUNCATE TABLE apartments CASCADE;")
  file.puts("TRUNCATE TABLE tenants CASCADE;")

  buildings.each do |b|
    file.puts("INSERT INTO buildings (id, name, address, num_floors) VALUES (#{b[:id]}, '#{b[:name]}', '#{b[:address]}', #{b[:num_floors]});")
  end
  apartments.each do |a|
    file.puts("INSERT INTO apartments (id, floor, name, price, sqft, bedrooms, bathrooms, building_id) VALUES (#{a[:id]}, #{a[:floor]}, '#{a[:name]}', #{a[:price]}, #{a[:sqft]}, #{a[:bedrooms]}, #{a[:bathrooms]}, #{a[:building_id]});")
  end
  tenants.each do |t|
    file.puts("INSERT INTO tenants (id, name, age, gender, apartment_id) VALUES (#{t[:id]}, '#{t[:name]}', #{t[:age]}, '#{t[:gender]}', #{t[:apartment_id]});")
  end
end
