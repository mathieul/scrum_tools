import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    let section = this.modelFor('daily-scrum.section');

    return this.store.createRecord('daily-task', {
      position: section.get('dailyTasks.length'),
      dailySection: section
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
