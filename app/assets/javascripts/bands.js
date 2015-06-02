$(function() {
  inspect = new InspectView();
  bands = new BandsCollection();
  bandsView = new BandListView({
    collection: bands
  });
  bands.fetch({reset: true});
});
