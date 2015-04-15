/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp();

// app.import('vendor/js/phoenix.js');

var bootstrapDir = app.bowerDirectory + '/bootstrap-sass-official/assets';
// select bootstrap JavaScript components to include
var bootstrapComponents = ['dropdown', 'alert', 'transition'];

for (var index in bootstrapComponents) {
  app.import(bootstrapDir + '/javascripts/bootstrap/' + bootstrapComponents[index] + '.js');
}

module.exports = app.toTree();
