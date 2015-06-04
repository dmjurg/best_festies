var BandsCollection = Backbone.Collection.extend({
  initialize: function(){
    console.log('New Bands Collection');
  },

// http://backbonefu.com/2011/08/filtering-a-collection-in-backbone-js/
  search: function(letters){
    if(letters == "") return this;

    var pattern = new RegExp(letters, "gi");
    // Well it seems that without wrapping the filter with the underscore function, the filter does not return a collection
    return _(this.filter(function(data) {
      return pattern.test(data.get("name"));
    }));
  },
  
  model: BandModel,
  url: '/bands'
});
