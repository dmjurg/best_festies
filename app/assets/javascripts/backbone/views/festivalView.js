var FestivalView = Backbone.View.extend({
  className: 'festival',
  tagName: 'div',

  initialize: function() {
    this.listenTo(this.model, 'change', this.render);
    this.render();
  },

  events: {
    'click': 'detailFestival'
  },

  render: function() {
    var renderedHTML = HandlebarsTemplates['festivals/show'](this.model.toJSON());
    this.$el.html(renderedHTML);
  },

  detailFestival: function() {
    festivalDetail.setFestival(this.model);
    // console.log(this.model.get("bands"));
  }

});
