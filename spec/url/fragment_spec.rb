require "spec_helper"

class URL
  RSpec.describe Fragment do
    subject { described_class.new("fragment") }

    it "is equal to other instance with the same fragment" do
      other = described_class.new("fragment")
      expect(subject).to eq(other)
    end

    it "is not equal to ther instance with differing fragment" do
      other = described_class.new("notcorrect")
      expect(subject).to_not eq(other)
    end
  end
end
