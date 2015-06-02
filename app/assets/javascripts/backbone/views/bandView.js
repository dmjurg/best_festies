var BandView = Backbone.View.extend({
  className: 'band',
  tagName: 'div',

  initialize: function() {
    this.listenTo(this.model, 'change', this.render);
    this.render();
  },

  events: {
    'click': 'inspectBand'
  },

  render: function() {
    var renderedHTML = HandlebarsTemplates['bands/show'](this.model.toJSON());
    this.$el.html(renderedHTML);
  },

  inspectBand: function() {
    inspect.setBand(this.model);
  }
});
