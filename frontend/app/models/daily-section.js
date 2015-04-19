import DS from 'ember-data';

export default DS.Model.extend({
  label:      DS.attr('string'),
  position:   DS.attr('number'),
  dailyTasks: DS.hasMany('daily-task')
});
