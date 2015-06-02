var BandModel = Backbone.Model.extend({
  initialize: function(){
    console.log('New Band Model Created');
  },
  urlRoot: '/bands'
});
