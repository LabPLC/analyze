module Analyze
  class Service

    # CLASS METHODS

    def self.perform(fp)
      analytics = {}

      if File.exist?(fp)
        IO.foreach(fp) do |line|
          chunk = line.match(/(GET|POST)(.\/.+\.(json|xml))/)
          if chunk
            matches = match(chunk[2])
            if matches
              matches.each do |match|
                analytics[match] ||= 0
                analytics[match] += 1
              end
            end
          end
        end
      end

      analytics
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
      self::PATTERNS
    end

  end
end
