var BandDetailView = Backbone.View.extend({
  el: '#bandDetail',

  initialize: function() {
    console.log("band detail")
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
