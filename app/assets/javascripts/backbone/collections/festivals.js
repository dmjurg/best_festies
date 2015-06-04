var FestivalsCollection = Backbone.Collection.extend({
  initialize: function(){
    console.log('New Festivals Collection');
  },

  comparator: function(festival) {
    return festival.get("name");
  },

// http://backbonefu.com/2011/08/filtering-a-collection-in-backbone-js/
  search: function(letters){
    if(letters == "") return this;

    var pattern = new RegExp(letters, "gi");
    // Well it seems that without wrapping the filter with the underscore function, the filter does not return a collection
    return new FestivalsCollection(this.filter(function(data) {
      return pattern.test(data.get("name"));
    }));
  },

  model: FestivalModel,
  url: '/festivals'
});
