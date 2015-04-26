import Ember from 'ember';

export default Ember.Controller.extend({
  current: false,

  actions: {
    saveTask() {
      this.get('model').save();
    }
  }
});
