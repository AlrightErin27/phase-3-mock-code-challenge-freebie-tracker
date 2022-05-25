puts 'Creating companies...'
goo = Company.create(name: 'Google', founding_year: 1998)
face = Company.create(name: 'Facebook', founding_year: 2004)
dun = Company.create(name: 'Dunder Mifflin', founding_year: 2002)
en = Company.create(name: 'Enron', founding_year: 1995)

puts 'Creating devs...'
r = Dev.create(name: 'Rick')
m = Dev.create(name: 'Morty')
mr = Dev.create(name: 'Mr. Meseeks')
g = Dev.create(name: 'Gazorpazop')

puts 'Creating freebies...'
Freebie.create(
  item_name: 'Kings of Leon',
  value: 12,
  company_id: en.id,
  dev_id: r.id,
)
Freebie.create(
  item_name: 'King of the Hill',
  value: 56,
  company_id: en.id,
  dev_id: m.id,
)
Freebie.create(
  item_name: 'Playground',
  value: 23,
  company_id: dun.id,
  dev_id: mr.id,
)
Freebie.create(
  item_name: 'Sour Patch Kids',
  value: 13,
  company_id: dun.id,
  dev_id: g.id,
)
Freebie.create(
  item_name: 'Kids in the Hall',
  value: 133,
  company_id: face.id,
  dev_id: r.id,
)
Freebie.create(
  item_name: 'Tomato',
  value: 9876,
  company_id: face.id,
  dev_id: m.id,
)
Freebie.create(
  item_name: 'Jar of Moon Shine',
  value: 45,
  company_id: goo.id,
  dev_id: mr.id,
)
Freebie.create(
  item_name: 'The Voyager Ship',
  value: 32,
  company_id: goo.id,
  dev_id: g.id,
)
Freebie.create(
  item_name: 'The Statue of David',
  value: 4,
  company_id: goo.id,
  dev_id: r.id,
)
Freebie.create(
  item_name: 'VHS Player',
  value: 8765,
  company_id: goo.id,
  dev_id: m.id,
)
Freebie.create(
  item_name: 'Camping Tent',
  value: 121,
  company_id: face.id,
  dev_id: mr.id,
)
Freebie.create(
  item_name: 'Vintage Nike Shoes',
  value: 5436,
  company_id: face.id,
  dev_id: g.id,
)

puts 'Seeding done!'
