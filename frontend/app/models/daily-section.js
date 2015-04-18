import DS from 'ember-data';

export default DS.Model.extend({
  label:     DS.attr('string'),
  position:  DS.attr('number'),
  tasks:     DS.hasMany('daily-task')
});
