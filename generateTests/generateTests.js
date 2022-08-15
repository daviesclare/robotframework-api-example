var generate = require('json-schema-test-data-generator');

var schema = require('./input.json')

console.dir(generate(schema));
