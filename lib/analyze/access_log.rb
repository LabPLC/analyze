module Analyze
  class AccessLog

    def initialize(path)
      if File.exist?(path)
        @path = path
      else
        raise ArgumentError, 'access log file path does not exist.'
      end
    end

    def lines(&block)
      IO.foreach(path) do |line|
        block.call Line.new(line)
      end
    end

    private

    attr_reader :path

  end
end
