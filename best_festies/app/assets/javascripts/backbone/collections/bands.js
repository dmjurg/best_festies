var BandsCollection = Backbone.Collection.extend({
  initialize: function(){
    console.log('New Bands Collection');
  },
  model: BandModel,
  url: '/bands'
});
