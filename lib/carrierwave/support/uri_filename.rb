require 'addressable/uri'

module CarrierWave
  module Support
    module UriFilename
      def self.filename(url)
        Addressable::URI.parse(url).path.gsub(/.*\/(.*?$)/, '\1')
      end
    end
  end
end