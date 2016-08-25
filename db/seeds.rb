(1..10).each do |a|
  puts 'Author was successfully created'
  Author.create(
    pasport_number: FFaker::AddressUS.building_number,
    name: FFaker::Name.name,
    address: FFaker::Address.street_address
  )
end

(1..10).each do |c|
  puts 'Customer was successfully created'
  Custom.create(
    pasport_number: FFaker::AddressUS.building_number,
    name: FFaker::Name.name,
    tel_number: FFaker::PhoneNumberAU.international_mobile_phone_number
  )
end

(1..10).each do |e|
  puts 'Exhibition was successfully created'
  Exhibition.create(
    location: FFaker::AddressUS.street_address,
    time: FFaker::Time.date,
    date: FFaker::Time.date,
    price: 7 * e - 2,
    picture_id: e
  )
end

(1..10).each do |g|
  puts 'Genre was successfully created'
  Genre.create(
    title: FFaker::CheesyLingo.title,
    description: FFaker::Lorem.sentences
  )
end

(1..10).each do |i|
  puts 'Order was successfully created'
  Order.create(
    price: 777 * i - 241,
    picture_id: i,
    personnel_id: i,
    custom_id: i
  )
end

(1..10).each do |p|
  puts 'Personnel was successfully created'
  Personnel.create(
    pasport_number: FFaker::AddressUS.building_number,
    name: FFaker::Name.name,
    position: FFaker::Company.position,
    pay: FFaker::PhoneNumber.area_code
  )
end

(1..10).each do |pic|
  puts 'Picture was successfully created'
  Picture.create(
    date: FFaker::Time.date,
    price: 777 * pic,
    author_id: pic,
    genre_id: pic,
    exhibition_id: pic,
    name: FFaker::CheesyLingo.title,
    image: FFaker::Avatar.image
  )
end
