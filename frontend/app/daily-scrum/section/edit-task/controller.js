import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    redirectToSection() {
      let section = this.get('model.dailySection');

      this.transitionToRoute('daily-scrum.section', section);
    }
  }
});
