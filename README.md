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
./bin/api -p PATH_TO_YOUR_ACCESS_LOGS
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

## Contributing

* Fork the project.
* Make your feature addition or bug fix.
* Commit, do not mess with Rakefile or version
* Send me a pull request. Bonus points for topic branches.


