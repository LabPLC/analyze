module Analyze
  class API < Service

    # CONSTANTS

    PATTERNS = [
      /(\/aire).+\.(json|xml)/,
      /(\/aire\/[A-z]+)\.(json|xml)/,
      /(\/georeferencia).+\.(json|xml)/,
      /(\/georeferencia\/[A-z]+).(json|xml)/,
      /(\/movilidad)\/.+\.(json|xml)/,
      /(\/movilidad\/ecobici).+\.(json|xml)/,
      /(\/movilidad\/ecobici\/viajes).+\.(json|xml)/,
      /(\/movilidad\/taxis).+\.(json|xml)/,
      /(\/movilidad\/taxis\/conductor)\.(json|xml)/,
      /(\/movilidad\/transporte\/sistemas)\.(json|xml)/,
      /(\/movilidad\/transporte\/lineas)\.(json|xml)/,
      /(\/movilidad\/transporte\/estaciones)\.(json|xml)/,
      /(\/movilidad\/transporte\/trayectos)\.(json|xml)/,
      /(\/servicios)\/.+\.(json|xml)/,
      /(\/servicios\/buzon).+\.(json|xml)/,
      /(\/servicios\/buzon\/services).+\.(json|xml)/,
      /(\/servicios\/buzon\/discovery).+\.(json|xml)/,
      /(\/servicios\/buzon\/requests).+\.(json|xml)/,
      /(\/servicios\/buzon\/tokens).+\.(json|xml)/,
      /(\/servicios\/buzon\/jurisdictions).+\.(json|xml)/,
    ].freeze

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

  end
end
