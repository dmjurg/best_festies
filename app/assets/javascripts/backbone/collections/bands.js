var BandsCollection = Backbone.Collection.extend({
  initialize: function(){
    console.log('New Bands Collection');
  },

  comparator: function(band) {
    return band.get("name");
  },

// http://backbonefu.com/2011/08/filtering-a-collection-in-backbone-js/
  search: function(letters){
    if(letters == "") return this;

    var pattern = new RegExp(letters, "gi");
    // Well it seems that without wrapping the filter with the underscore function, the filter does not return a collection
    return new BandsCollection(this.filter(function(data) {
      // console.log(pattern.test(data.get("name")));
      return pattern.test(data.get("name"))
    }));
  },

  model: BandModel,
  url: '/bands'
});
