var FestivalListView = Backbone.View.extend({
  el: '#library',

  initialize: function() {
    this.listenTo(this.collection, 'reset', this.renderAll);
    this.listenTo(this.collection, 'add', this.renderOne);
  },

  renderAll: function() {
    this.$("#festival-list").empty();
    this.collection.each(this.renderOne, this);
  },

  renderOne: function(festival) {
    var festivalView = new FestivalView({model: festival});
    this.$("#festival-list").append(festivalView.$el);
  },

  events: {
    'keypress .search': 'filterFestivals'
  },

  filterFestivals: function() {
    console.log("filtering festivals")
  }

});
