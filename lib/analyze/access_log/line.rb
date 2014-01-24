module Analyze
  class AccessLog
    class Line

      # CONSTANTS

      TIME_FORMAT  = '%d/%b/%Y:%H:%M:%S %z'.freeze
      TIME_PATTERN = /\[(.+)\]/.freeze
      PATH_PATTERN = /(GET|POST)(.\/.+\.(json|xml))/.freeze

      # INITIALIZER

      def initialize(line)
        @line = line
      end

      # INSTANCE METHODS

      def before?(date_time)
        time && time <= date_time
      end

      def after?(date_time)
        time && time >= date_time
      end

      def path
        @path ||= match(PATH_PATTERN, 2)
      end

      def time
        @time ||= match(TIME_PATTERN, 1) {|time| DateTime.strptime(time, TIME_FORMAT) if time }
      end

      private

      attr_reader :line

      def match(pattern, index, &block)
        chunks = line.match(pattern)

        if chunks
          chunk = chunks[index]
        end

        if block_given?
          block.call(chunk)
        else
          chunk
        end
      end

    end
  end
end
