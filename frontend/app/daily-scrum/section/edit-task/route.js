import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    return this.store.getById('daily-task', params.task_id);
  },

  actions: {
    didTransition() {
      return false;
    }
  }
});
