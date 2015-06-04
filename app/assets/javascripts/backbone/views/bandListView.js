var BandListView = Backbone.View.extend({
  el: '#library',

  initialize: function() {
    this.listenTo(this.collection, 'reset', this.renderAll);
    this.listenTo(this.collection, 'add', this.renderOne);
  },

  renderAll: function() {
    this.$("#band-list").empty();
    this.collection.each(this.renderOne, this);
  },

  renderOne: function(band) {
    var bandView = new BandView({model: band});
    this.$("#band-list").append(bandView.$el);
  },

  events: {
    'keypress .search': 'filterBands'
  },

  filterBands: function() {
    console.log("filtering bands")
  }

});
