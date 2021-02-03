require 'docusign_esign/utils'

describe DocuSign_eSign::Utils do
  describe '.camelize_symbol' do
    it 'converts snake case symbols to camel case' do
      symbol = :snake_case_symbol

      camelized_symbol = DocuSign_eSign::Utils.camelize_symbol(symbol)

      expect(camelized_symbol).to eq :snakeCaseSymbol
    end

    it 'converts snake case symbols to camel case with first letter uppercased' do
      symbol = :snake_case_symbol

      camelized_symbol = DocuSign_eSign::Utils.camelize_symbol(symbol, uppercase_first_letter: true)

      expect(camelized_symbol).to eq :SnakeCaseSymbol
    end

    it 'accepts a hash of irregular mappings ' do
      symbol = :user_id

      camelized_symbol = DocuSign_eSign::Utils.camelize_symbol(symbol, irregular_mappings: {:user_id => :userID})

      expect(camelized_symbol).to eq :userID
    end
  end

  describe '.camelize_string' do
    it 'converts snake case strings to camel case' do
      string = 'snake_case_string'

      camelized_string = DocuSign_eSign::Utils.camelize_string(string)

      expect(camelized_string).to eq 'snakeCaseString'
    end

    it 'converts snake case strings to camel case with first letter uppercased' do
      string = 'snake_case_string'

      camelized_string = DocuSign_eSign::Utils.camelize_string(string, uppercase_first_letter: true)

      expect(camelized_string).to eq 'SnakeCaseString'
    end
  end
end