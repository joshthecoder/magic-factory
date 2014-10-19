FactoryGirl.define do
  factory :card do
    name "Sen Triplets"
    mana_cost "{2}{W}{U}{B}"
    converted_mana_cost 5
    colors ["White", "Blue", "Black"]
    card_type "Legendary Artifact Creature — Human Wizard"
    card_layout "normal"
  end
end
