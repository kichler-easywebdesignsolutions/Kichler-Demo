# Custom Salesforce Ant
> Deploy Salesforce metadata using Ant.


Fetch, delete and deploy Salesforce metadata using ant


## Prequisite

Java
Ant - Add ant to path in the System Environment

## Setup

Update environment properties with Salesforce credentials for the target org

e.g. sandbox.properties, prod.properties

## Development Usage

Define the package.xml with the Saleforce Metadata to retrieve

Open the command line on the same directory as your build

Fetch Metadata
```sh
ant -Denvironment=sandbox -buildfile build.xml fetchMetadata
```

Deploy Build
```sh
ant -Denvironment=prod -buildfile build.xml deployMetadata
```

Undeploy Build
```sh
ant -Denvironment=prod -buildfile build.xml undeployCode
```

Validate Build
```sh
ant -Denvironment=prod -buildfile build.xml deployEmptyCheckOnly
```


## Meta

Paulo Orquillo – [@olopsman](https://twitter.com/olopsman)

## TODO

Generate a package.xml from describeMetadata

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request
# Kichler-Demo
