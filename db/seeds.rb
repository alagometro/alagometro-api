return if Location.all.size > 0

location = Location.create({
  title: 'Principal dos Bancários',
  address: 'R. Bancários Sérgio Guerra x R. João Batista Maia',
  location: ''
})

Status.create({
  location_id: location.id,
  level: 0
})
