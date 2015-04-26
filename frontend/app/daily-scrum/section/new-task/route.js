import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    return this.store.createRecord('daily-task');
  },

  actions: {
    didTransition() {
      return false;
    }
  }
});
