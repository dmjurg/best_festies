var FestivalModel = Backbone.Model.extend({
  initialize: function(){
    console.log('New Festival Model Created');
  },
  urlRoot: '/festivals'
});
