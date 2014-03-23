# AjGenesisNode PHP

AjGenesisNode PHP tasks and templates, to generate web sites using PHP. WIP.

## Setup

Install [Node.js](http://nodejs.org).

Install globally latests version of AjGenesis for Node, Entity and Php modules:
```
npm install ajgenesis -g
npm install ajgenesisnode-entity -g
npm install ajgenesisnode-model -g
npm install ajgenesisnode-php -g
```

## Quick start

In any directory, create an application
```
ajgenesis php:create demo
cd demo
```

The AjGenesis `php` module is installed automatically from `ajgenesisnode-php`, if it is not already installed.

The new directory has subdirectories:

- `models`: where the free model files reside.
- `ajgenesis`: additional tasks and remplates for AjGenesis.
- `site`: initial static files for a new web site.

Add some entities and propeties:

```
ajgenesis entity:add customer
ajgenesis entity:addproperty customer name
ajgenesis entity:addproperty customer address
ajgenesis entity:add supplier
ajgenesis entity:addproperty supplier name
ajgenesis entity:addproperty supplier address
```

The new .json files will be added to `models` director.

Generate the web site:

```
ajgenesis generate
```

The web site is generated in a new directory `build`.

Install the dependencies
```
cd build
npm install
```

The site use MySQL.

Add `build` directory to `htdocs` folder in your local web server.

The site is available in your browser using `http://localhost/<yourname>`.

## Development

```
npm install -g ajgenesis
git clone git://github.com/ajlopez/AjGenesisNode-Php.git
cd AjGenesisNode-Php
npm link ajgenesis
npm install
npm test
```

## Versions

TBD

## References

Useful articles to use in development:

TBD

## Contribution

Feel free to [file issues](https://github.com/ajlopez/AjGenesisNode-Php) and submit
[pull requests](https://github.com/ajlopez/AjGenesisNode-Php/pulls) — contributions are
welcome.

If you submit a pull request, please be sure to add or update corresponding
test cases, and ensure that `npm test` continues to pass.
