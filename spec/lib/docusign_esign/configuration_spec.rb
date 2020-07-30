require "docusign_esign"
require "docusign_esign/configuration"

RSpec.describe DocuSign_eSign::Configuration do
  describe "#base_url" do
    it "replaces unsafe characters with safe characters" do
      configuration = DocuSign_eSign::Configuration.new
      configuration.scheme = "https"
      configuration.host = "www.domain.com"
      configuration.base_path = "/base/path^{}%<> #anchor"

      base_url = configuration.base_url

      expect(base_url).to eq("https://www.domain.com/base/path%5E%7B%7D%25%3C%3E%20#anchor")
    end

    it "replaces multiple forward slashes with a single forward slash" do
      configuration = DocuSign_eSign::Configuration.new
      configuration.scheme = "https"
      configuration.host = "www.domain.com"
      configuration.base_path = "//base/path"

      base_url = configuration.base_url

      expect(base_url).to eq("https://www.domain.com/base/path")
    end

    it "strips the trailing forward slash" do
      configuration = DocuSign_eSign::Configuration.new
      configuration.scheme = "https"
      configuration.host = "www.domain.com"
      configuration.base_path = "/base/path/"

      base_url = configuration.base_url

      expect(base_url).to eq("https://www.domain.com/base/path")
    end
  end
end
