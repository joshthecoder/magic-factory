require 'json'
require 'net/http'
require 'uri'

require 'json_importer'

ALL_CARDS_URI = URI('http://mtgjson.com/json/AllCards.json')

namespace :mtgjson do
  desc "Import all card data from mtgjson.com"
  task import_cards: :environment do
    cards = JSON.parse(Net::HTTP.get(ALL_CARDS_URI))
    Card.transaction do
      JSONImporter.new.import_all_cards(cards)
    end
  end
end
