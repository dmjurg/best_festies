var FestivalsCollection = Backbone.Collection.extend({
  initialize: function(){
    console.log('New Festivals Collection');
  },
  model: FestivalModel,
  url: '/festivals'
});
