module Analyze
  class Service

    # CLASS METHODS

    private

    def self.match(path)
      matches = []

      patterns.each do |pattern|
        match = path.match(pattern)
        if match
          matches << match[1]
        end
      end

      matches
    end

    def self.patterns
      self::PATTERNS
    end

  end
end
