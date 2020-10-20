locations = [
  {
    title: 'Principal dos Bancários',
    address: 'R. Bancários Sérgio Guerra',
    location: '-7.15016224,-34.8407793'
  },
  {
    title: 'CBTU',
    address: 'Avenida Sanhauá',
    location: '-7.11494057,-34.89027679'
  },
  {
    title: 'Entrada do Geisel',
    address: 'Avenida Valdemar Naziazeno',
    location: '-7.17158561,-34.87421304'
  },
  {
    title: 'Posto 99 x Ecomedical',
    address: 'Rua Antônio Rabelo Júnior',
    location: '-7.11897015,-34.83705908'
  },
]

return if Location.all.size == locations.size

locations.map do |loc|
  location = Location.create(loc)
  Status.create({
    location_id: location.id,
    level: 0
  })
end
