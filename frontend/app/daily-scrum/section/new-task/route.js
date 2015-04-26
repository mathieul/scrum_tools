import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.store.createRecord('daily-task', {
      dailySection: this.modelFor('daily-scrum.section')
    });
  },

  actions: {
    didTransition() {
      return false;
    },

    willTransition() {
      if (this.get('controller.model.isDirty')) {
        this.get('controller.model').deleteRecord();
      }
    }
  }
});
