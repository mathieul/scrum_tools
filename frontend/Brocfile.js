/* global require, module */

var mergeTrees = require('broccoli-merge-trees');
var pickFiles  = require('broccoli-static-compiler');
var EmberApp   = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp();

var fontAwesome = pickFiles(app.bowerDirectory + '/fontawesome/fonts', {
    srcDir: '/',
    destDir: '/assets/fonts'

});

var bootstrapDir = app.bowerDirectory + '/bootstrap-sass-official/assets';

// select bootstrap JavaScript components to include
var bootstrapComponents = ['dropdown', 'alert', 'transition', 'collapse'];

for (var index in bootstrapComponents) {
  app.import(bootstrapDir + '/javascripts/bootstrap/' + bootstrapComponents[index] + '.js');
}

module.exports = mergeTrees([app.toTree(), fontAwesome]);
