class JSONImporter
  def import_all_cards(cards)
    cards.each { |name, data| import_card(data) }
  end

  def import_card(data)
    Card.find_or_initialize_by(name: data['name']).update(
      name: data['name'],
      card_type: data['type'],
      colors: data['colors'],
      card_layout: data['layout'],
      mana_cost: data['manaCost'],
      converted_mana_cost: data['cmc'],
      power: data['power'],
      toughness: data['toughness'],
      image_name: data['imageName'],
      text: data['text']
    )
  end
end
