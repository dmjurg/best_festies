var InspectView = Backbone.View.extend({
  el: '#inspect',

  initialize: function() {
    console.log("band inspected")
  },

  setBand: function(band) {
    this.model = band;
    this.render();
  },

  render: function() {
    var renderedHTML = HandlebarsTemplates['bands/inspect'](this.model.toJSON());
    this.$el.html(renderedHTML);
  }
})
