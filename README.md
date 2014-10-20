Magic Factory
=============
A web application for crafting card decks for Magic the Gathering.

Getting setup
-------------
In order to run this Rails application prepare your system by installing:

- Ruby 2.1+
- PostgreSQL
- ElasticSearch

Now go ahead setup the database, download card data, and setup ElasticSearch indexes.
- `rake db:setup`
- `rake mtgjson:import_cards`
- `rake elastic_search:create_indexes elastic_search:import_cards`

You are now ready to run the app!
