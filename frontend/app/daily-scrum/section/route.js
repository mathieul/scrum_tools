import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    return this.store.getById('daily-section', params.section_id);
  },

  actions: {
    willTransition() {
      this.get('controller').set('current', false);
    },

    didTransition() {
      this.get('controller').set('current', true);
    }
  }
});
