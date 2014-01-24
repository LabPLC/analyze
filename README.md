Analyze
=======

Analyze is an API usage analysis tool for the Code for Mexico Datos API. It was designed to parse Nginx access logs as a means of determining the most highly used API services.

## Installation

```
git clone https://github.com/rclosner/analyze.git
cd analyze
bundle
```

## Usage

```
./bin/api --options 

#=>
/aire: 43367
/aire/calidad: 2
/aire/clima: 19481
/aire/uv: 20
/georeferencia: 166
/georeferencia/estacionamientos: 1
/georeferencia/mercado: 1
/georeferencia/salud: 1
/georeferencia/turismo: 1
/georeferencia/verificentros: 2
/movilidad: 3843
/movilidad/ecobici: 10
/movilidad/taxis: 234
/movilidad/taxis/conductor: 152
/servicios: 102
/servicios/buzon: 3
```

##Options

  * --path, -p <s>:   Path to Nginx access logs (required: true)
  * --sort, -s <s>:   Sorting method (`service` or `hits`) (default: service)
  * --before, -b <s>:   Ignores all log items after a specified time (format: '24/Jan/2014:11:19:39 -0600')
  * --after, -a <s>:   Ignores all log items before a specified time (format: '24/Jan/2014:11:19:39 -0600')
  * --help, -h:   Show this message

## Contributing

  * Fork the project.
  * Make your feature addition or bug fix.
  * Commit, do not mess with Rakefile or version
  * Send me a pull request. Bonus points for topic branches.
