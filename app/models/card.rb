class Card < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  serialize :colors, JSON

  def image_url
    "http://mtgimage.com/card/#{image_name}.jpg"
  end

  def mana_symbols
    mana_cost.scan(/{(\w)}/).flatten
  end
end
