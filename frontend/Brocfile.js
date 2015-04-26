/* global require, module */

var mergeTrees = require('broccoli-merge-trees');
var pickFiles  = require('broccoli-static-compiler');
var EmberApp   = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp();

var fontAwesome = pickFiles(app.bowerDirectory + '/fontawesome/fonts', {
    srcDir: '/',
    destDir: '/assets/fonts'

});

var fontIcomoon = pickFiles(app.bowerDirectory + '/bootcards/dist/fonts', {
    srcDir: '/',
    destDir: '/assets/fonts'

});

app.import(app.bowerDirectory + '/bootstrap/dist/css/bootstrap.css');
// app.import(app.bowerDirectory + '/bootcards/dist/css/bootcards-ios.css');
app.import(app.bowerDirectory + '/bootcards/dist/css/bootcards-desktop.css');

app.import(app.bowerDirectory + '/bootstrap/dist/js/bootstrap.js');
app.import(app.bowerDirectory + '/bootcards/dist/js/bootcards.js');

module.exports = mergeTrees([app.toTree(), fontAwesome, fontIcomoon]);
