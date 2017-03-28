require "spec_helper"

# Host Parts:
# :tld, :domain, subdomains: [:hostnames]

class URL
  RSpec.describe Host do
    subject { described_class.new("www.host.com") }

    it "is equal to other instance with the same host" do
      other = described_class.new("www.host.com")
      expect(subject).to eq(other)
    end

    it "is not equal to ther instance with differing host" do
      other = described_class.new("nothostie")
      expect(subject).to_not eq(other)
    end

    describe "subdomain" do
      it "parses the subdomain and returns a string" do
        pending
        expect(subject.subdomain).to eq("www")
      end
    end

    describe "tld" do
      it "parses the top level domain" do
        expect(subject.tld).to eq(["com"])
      end

      it "handles tlds with several segments" do
        host = described_class.new("www.host.co.uk")
        expect(host.tld).to eq(["co", "uk"])
      end

      it "handles tlds with several segments" do
        host = described_class.new("www.co.host.co.uk")
        expect(host.tld).to eq(["co", "uk"])
      end

      it "handles tlds with several segments" do
        host = described_class.new("www.co.fedex.com")
        expect(host.tld).to eq(["com"])
      end

      it "handles tlds with several segments" do
        host = described_class.new("www.co.fedex.com")
        expect(host.tld).to eq(["com"])
      end

      it "handles tlds with several segments" do
        host = described_class.new("www.co.fedex.us")
        expect(host.tld).to eq(["us"])
      end
    end
  end
end
