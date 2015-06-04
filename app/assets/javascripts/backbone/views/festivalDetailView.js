var FestivalDetailView = Backbone.View.extend({
  el: '#festivalDetail',

  initialize: function() {
    console.log("fest detail")
  },

  setFestival: function(festival) {
    this.model = festival;
    this.render();
  },

  render: function() {
    var renderedHTML = HandlebarsTemplates['festivals/inspect'](this.model.toJSON());
    this.$el.html(renderedHTML);
  }

})
