module Analyze
  class Service

    # CLASS METHODS

    def self.perform(path: nil, before: nil, after: nil)
      results = {}

      AccessLog.new(path).tap do |log|
        log.lines do |line|
          if before
            next unless line.before?(before)
          end

          if after
            next unless line.after?(after)
          end

          if line.path
            matches = match(line.path)
            if matches
              matches.each do |match| 
                results[match] ||= 0
                results[match] += 1
              end
            end
          end
        end
      end

      results
    end

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
      self::VALID_PATTERNS
    end

  end
end
