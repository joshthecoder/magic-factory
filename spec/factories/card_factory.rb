FactoryGirl.define do
  factory :card do
    name "Sen Triplets"
    mana_cost "{2}{W}{U}{B}"
    converted_mana_cost 5
    colors ["White", "Blue", "Black"]
    type "Legendary Artifact Creature — Human Wizard"
    layout "normal"
    rarity "Mythic Rare"
    card_number "109"
  end
end
