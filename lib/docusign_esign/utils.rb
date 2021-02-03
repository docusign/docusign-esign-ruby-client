module DocuSign_eSign
  module Utils
    class << self

      # Returns the given symbol in camel case
      # @return [Symbol] Returns the given symbol in camel case
      def camelize_symbol(symbol, uppercase_first_letter: false)
        camelize_string(symbol.to_s, uppercase_first_letter: uppercase_first_letter).to_sym
      end

      # Returns the given string in camel case
      # @return [String] Returns the given string in camel case
      def camelize_string(string, uppercase_first_letter: false)
        if uppercase_first_letter
          string = string.sub(/^[a-z\d]*/) { |match| match.capitalize }
        else
          string = string.sub(/^(?:(?=\b|[A-Z_])|\w)/) { |match| match.downcase }
        end

        string.gsub(/(?:_|(\/))([a-z\d]*)/) { "#{$1}#{$2.capitalize}" }
      end
    end
  end
end

