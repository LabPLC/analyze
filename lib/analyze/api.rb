module Analyze
  class API < Service

    # CONSTANTS

    PATTERNS = [
      /(\/aire)\.(json|xml)/,
      /(\/aire).+\.(json|xml)/,
      /(\/aire\/[A-z]+)\.(json|xml)/,
      /(\/georeferencia)\.(json|xml)/,
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

  end
end
