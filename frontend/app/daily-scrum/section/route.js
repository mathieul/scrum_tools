import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    return this.store.getById('daily-section', params.section_id);
  }
});
