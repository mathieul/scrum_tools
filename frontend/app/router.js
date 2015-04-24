import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

export default Router.map(function() {
  this.route('daily-scrum', function () {
    this.route('summary', {path: ''});
    this.route('section', {path: 'section/:section_id'}, function () {
      this.route('new-task', {path: 'new-task'});
    });
  });
});
