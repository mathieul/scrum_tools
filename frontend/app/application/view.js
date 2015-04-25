import Ember from 'ember';
/* global bootcards */

export default Ember.View.extend({
  didInsertElement() {
    bootcards.init({
      offCanvasBackdrop : true,
      offCanvasHideOnMainClick : true,
      enableTabletPortraitMode : true,
      disableRubberBanding : true,
      disableBreakoutSelector : 'a.no-break-out'
    });
  }
});
