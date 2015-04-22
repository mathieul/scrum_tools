/* global require, module */

var mergeTrees = require('broccoli-merge-trees');
var pickFiles  = require('broccoli-static-compiler');
var EmberApp   = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp();

var fontAwesome = pickFiles(app.bowerDirectory + '/fontawesome/fonts', {
    srcDir: '/',
    destDir: '/assets/fonts'

});

var materializeFonts = pickFiles(app.bowerDirectory + '/materialize/dist/font', {
  srcDir: '/',
  destDir: '/assets/fonts'
});

module.exports = mergeTrees([app.toTree(), fontAwesome, materializeFonts]);
