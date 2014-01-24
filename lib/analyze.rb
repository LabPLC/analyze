require 'time'

module Analyze
  VALID_SERVICES = %w( API ).freeze
end

require File.join( File.dirname(__FILE__), 'analyze', 'access_log' )
require File.join( File.dirname(__FILE__), 'analyze', 'access_log', 'line' )
require File.join( File.dirname(__FILE__), 'analyze', 'service' )
require File.join( File.dirname(__FILE__), 'analyze', 'api' )
