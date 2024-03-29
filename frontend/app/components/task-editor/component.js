import Ember from 'ember';

export default Ember.Component.extend({
  /* Public API */
  title: null,
  content: null,

  /* Internal */
  cannotSave: Ember.computed.not('content.isDirty'),

  actions: {
    save() {
      this.get('content').save().then(() => this.sendAction());
    },

    delete() {
      let task = this.get('content');

      task.deleteRecord();
      task.save().then(() => this.sendAction());
    }
  }
});
