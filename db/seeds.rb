locations = [
  {
    title: 'Principal dos Bancários',
    address: 'R. Bancário Sérgio Guerra',
    location: '-7.15016224,-34.8407793'
  },
  {
    title: 'CBTU',
    address: 'Av. Sanhauá',
    location: '-7.11494057,-34.89027679'
  },
  {
    title: 'Entrada do Geisel',
    address: 'Av. Valdemar Naziazeno',
    location: '-7.17158561,-34.87421304'
  },
  {
    title: 'Posto 99 x Ecomedical',
    address: 'Rua Antônio Rabelo Júnior',
    location: '-7.11897015,-34.83705908'
  },
  {
    title: 'Ladeira Miramar x Castelo Branco',
    address: 'Rua José Gonçalves Júnior',
    location: '-7.12682692,-34.83673453'
  },
  {
    title: 'Ladeira Valentina x Mangabeira',
    address: 'Rua Francisco Porfírio Ribeiro',
    location: '-7.19315699,-34.83965278'
  },
  {
    title: 'Rua do Bar do Galo',
    address: 'Av. Severino Pereira de Araújo',
    location: '-7.12484677,-34.86173272'
  },
  {
    title: 'Sonrisal em frente à revendedora da Trevo',
    address: 'Av. Hilton Souto Maior',
    location: '-7.1660449,-34.86123919'
  },
  {
    title: 'Cruzamento da Manoel deodato com Otacílio de Albuquerque',
    address: 'Av. Otacílio de Albuquerque',
    location: '-7.126262,-34.859105'
  },
  {
    title: 'Cruzamento da carneiro da Cunha com Caetano Filgueiras',
    address: 'Av. Caetano Filgueiras',
    location: '-7.125698,-34.862778'
  },
  {
    title: 'Rui Barbosa x Beira Rio',
    address: 'Av. Min. José Américo de Almeida',
    location: '-7.127692,-34.861116'
  },
  {
    title: 'Acesso ao Retão para a BR230',
    address: 'Alça da BR 230',
    location: '-7.097400, -34.847718'
  },
  {
    title: 'Tancredo Neves perto do Martelinho de Ouro',
    address: 'Av. Pres. Tancredo Neves',
    location: '-7.097722,-34.854702'
  },
  {
    title: 'Epitácio em frente ao Lourdinas',
    address: 'Av. Epitácio Pessoa',
    location: '-7.119813,-34.868688'
  },
  {
    title: 'Sucata do Edinho',
    address: 'Rua João Miguel de Souza',
    location: '-7.171525,-34.867814'
  },
  {
    title: 'Av. João Machado (-7.126484, -34.873627)',
    address: 'Av. João Machado',
    location: '-7.126484,-34.873627'
  },
  {
    title: 'Rua da mata',
    address: 'Rua Edvaldo Bezerra Cavalcanti Pinho',
    location: '-7.133043, -34.822960'
  },
  {
    title: 'Pão de Açúcar Miramar',
    address: 'Rua Giuseppe Duarte de Queiroz',
    location: '-7.119967, -34.831797'
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
