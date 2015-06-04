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
    'keypress .search': 'filterFestivals',
    'click .reset': 'reset'
  },

  reset: function() {
    this.collection = new FestivalsCollection();
    this.collection.fetch({reset: true});
  },

  filterFestivals: function(event) {
    var letters = $(".search").val();
    this.collection = this.collection.search(letters);
    this.renderAll();
  }

});
