import Ember from 'ember';

export default Ember.Component.extend({
  /* public API */
  section: null,
  edit: false,

  /* internal */
  tagName: 'ul',
  classNames: ['collection'],
});
