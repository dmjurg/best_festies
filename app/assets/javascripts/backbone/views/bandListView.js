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
    'keypress .search': 'filterBands',

  },

  renderMatches: function(){
    this.$("#searched-band-list").empty();
    this.collection.each(this.renderMatch, this);
  },

  renderMatch: function(band) {
    var bandSearchView = new BandView({
      model: band
    });
    return this.$("#searched-band-list").append(bandSearchView.$el);;
  },
  //   var bandMatchView = new BandView({model: band});
  //   this.$("#band-list").append(bandMatchView.$el);
  // },
    // this.$("#searched-band-list").html("");
  // },
  //
  //   bands.each(function(band){
  //     var bandSearchView = new BandView({
  //       model: band,
  //       collection: this.collection
  //     });
  //     this.$("#searched-band-list").append(bandSearchView.$el);
  //   });
  //   return this;
  // },

  filterBands: function(event) {
    var letters = $(".search").val();
		this.renderMatches(this.collection.search(letters));
  }

});
