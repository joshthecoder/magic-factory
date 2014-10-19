class Card < ActiveRecord::Base
  serialize :colors, JSON
end
