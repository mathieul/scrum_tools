import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.store.all('daily-section');
  }
});
