namespace :elastic_search do
  desc "Create ElasticSearch indexes for searchable models."
  task create_indexes: :environment do
    Card.__elasticsearch__.create_index! force: true
  end

  desc "Import data into the cards index."
  task import_cards: :environment do
    Card.import
  end
end
