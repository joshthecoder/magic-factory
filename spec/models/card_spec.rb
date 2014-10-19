require "rails_helper"

describe Card do
  describe "colors" do
    subject { create(:card).colors }
    it { is_expected.to be_an(Array) }
  end
end
