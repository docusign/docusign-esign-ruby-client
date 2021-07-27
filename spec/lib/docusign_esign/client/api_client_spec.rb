require "docusign_esign"
require "docusign_esign/client/api_client"

RSpec.describe DocuSign_eSign::ApiClient do
  describe "#build_request_url" do
    context "when the oauth option is set" do
      it "replaces unsafe characters with safe characters" do
        client = described_class.new
        client.oauth_base_path = "domain.com/oauth"

        url = client.build_request_url("/path^{}%<> #anchor", { oauth: true })

        expect(url).to eq("https://domain.com/oauth/path%5E%7B%7D%25%3C%3E%20#anchor")
      end

      it "replaces multiple forward slashes with a single forward slash" do
        client = described_class.new
        client.oauth_base_path = "domain.com/oauth"

        url = client.build_request_url("//path", { oauth: true })

        expect(url).to eq("https://domain.com/oauth/path")
      end
    end

    context "when the oauth option is not set" do
      it "replaces unsafe characters with safe characters" do
        config = instance_double("Configuration", base_url: "http://domain.com")
        client = described_class.new(config)

        url = client.build_request_url("/path^{}%<> #anchor", { oauth: false })

        expect(url).to eq("http://domain.com/path%5E%7B%7D%25%3C%3E%20#anchor")
      end

      it "replaces multiple forward slashes with a single forward slash" do
        config = instance_double("Configuration", base_url: "http://domain.com")
        client = described_class.new(config)

        url = client.build_request_url("//path", { oauth: false })

        expect(url).to eq("http://domain.com/path")
      end
    end
  end
end
