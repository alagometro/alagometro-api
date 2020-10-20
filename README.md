# Alagômetro API

API Rest do Alagômetro

## Rodando o Projeto

    bundle install
    bundle exec rake db:create
    bundle exec rake db:migrate
    bundle exec rake db:seed
    bundle exec ruby app.rb

Abra no navegador [http://localhost:4567/](http://localhost:4567/)

## Endpoints

Lista de todos os locais:

    GET http://localhost:4567/
    
    [{
        "title": "R. Bancários Sérgio Guerra x R. João Batista Maia",
        "lat": "-7.15016224",
        "lng": "-34.8407793",
        "level": 1,
        "last_update": "2020-10-20T03:01:30.318Z"
    }]

Atualiza o nível de alagamento de um local

    GET http://localhost:4567/update/:secret/:local_id/:nivel

    {
        "title": "R. Bancários Sérgio Guerra x R. João Batista Maia",
        "lat": "-7.15016224",
        "lng": "-34.8407793",
        "level": 3,
        "last_update": "2020-10-20T03:01:30.318Z"
    }
