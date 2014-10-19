require 'rails_helper'

require 'json_importer'

describe JSONImporter do
  let(:importer) { JSONImporter.new }
  let(:card) {
    {
      'cmc' => 5,
      'colors' => ['White', 'Blue', 'Black'],
      'imageName' => 'sen triplets',
      'layout' => 'normal',
      'manaCost' => '{2}{W}{U}{B}',
      'name' => 'Sen Triplets',
      'power' => '3',
      'subtypes' => ['Human', 'Wizard'],
      'supertypes' => ['Legendary'],
      'text' => 'At the beginning of your upkeep, choose target opponent. This turn, that player can\'t cast spells or activate abilities and plays with his or her hand revealed. You may play cards from that player\'s hand this turn.',
      'toughness' => '3',
      'type' => 'Legendary Artifact Creature — Human Wizard',
      'types' => ['Artifact', 'Creature']
    }
  }

  describe '#import_all_cards' do
    let(:cards) {
      { 'Sen Triplets' => card }
    }

    it 'imports each card' do
      expect { importer.import_all_cards(cards) }.to change { Card.count }.by(1)
    end
  end

  describe '#import_card' do
    context 'with data for a new card' do
      it 'creates a card' do
        expect { importer.import_card(card) }.to change { Card.count }.by(1)
      end
    end

    context 'with data for existing card' do
      before { create(:card) }
      before { importer.import_card(card.merge({'manaCost' => '{1}{W}'})) }

      it 'does not create a card' do
        expect(Card.count).to be(1)
      end

      it 'updates record with changes in data' do
        expect(Card.first.mana_cost).to eq('{1}{W}')
      end
    end
  end
end
