if Rails.env.development?
  first_car = Car.create(system_id: "1234")
  second_car = Car.create(system_id: "1235")
  third_car = Car.create(system_id: "1236")
  fourth_car = Car.create(system_id: "1237")
  fifth_car = Car.create(system_id: "1238")


  dnd_beyond = Company.create(name: "D&D Beyond")
  reedpop = Company.create(name: "ReedPop")
  urban_space = Company.create(name: "Urbanspace")


  spelljammer = dnd_beyond.ads.create(description: "Spelljammer pre-order", start_date: Date.today, exp_date: Date.today.next_month)
  perks = dnd_beyond.ads.create(description: "New registration perks", start_date: Date.today.prev_month(4), exp_date: Date.today.prev_month)

  nycc_next = reedpop.ads.create(description: "NYCC 2022", start_date: Date.parse('2022-07-01'), exp_date: Date.parse('2022-10-09'))
  nycc_prev = reedpop.ads.create(description: "NYCC 2021", start_date: Date.parse('2021-07-01'), exp_date: Date.parse('2021-10-10'))

  holiday_market_exp = Date.ordinal(2021, -1)
  holiday_market_start = Date.ordinal(2021, -92)
  union_square = urban_space.ads.create(description: "Union Square Holiday Market", start_date: holiday_market_start, exp_date: holiday_market_exp)
  bryant_park = urban_space.ads.create(description: "Bryant Park Holiday Market", start_date: holiday_market_start, exp_date: holiday_market_exp)
  columbus_circle = urban_space.ads.create(description: "Columbus Circle Holiday Market", start_date: holiday_market_start, exp_date: holiday_market_exp)

  first_car.ads << [spelljammer, nycc_prev, union_square, columbus_circle]
  second_car.ads << [perks, nycc_next, bryant_park, columbus_circle]
  third_car.ads << [spelljammer, perks, nycc_next, union_square, bryant_park]
  fourth_car.ads << [nycc_prev, spelljammer, union_square, bryant_park, columbus_circle]
  fifth_car.ads << [spelljammer, perks, spelljammer, perks, nycc_next, nycc_prev]
end