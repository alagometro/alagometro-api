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
        "id": 1,
        "title": "Principal dos Bancários",
        "address": "R. Bancários Sérgio Guerra x R. João Batista Maia",
        "location": "",
        "created_at": "2020-10-19T23:17:34.320Z",
        "updated_at": "2020-10-19T23:17:34.320Z",
        "status": {
            "id": 3,
            "location_id": 1,
            "level": 1,
            "created_at": "2020-10-19T23:27:13.082Z",
            "updated_at": "2020-10-19T23:27:13.082Z"
        }
    }]

Atualiza o nível de alagamento de um local

    GET http://localhost:4567/update/:secret/:local_id/:nivel

    {
        "id": 1,
        "title": "Principal dos Bancários",
        "address": "R. Bancários Sérgio Guerra x R. João Batista Maia",
        "location": "",
        "created_at": "2020-10-19T23:17:34.320Z",
        "updated_at": "2020-10-19T23:17:34.320Z",
        "status": {
            "id": 4,
            "location_id": 1,
            "level": 1,
            "created_at": "2020-10-19T23:32:56.664Z",
            "updated_at": "2020-10-19T23:32:56.664Z"
        }
    }
