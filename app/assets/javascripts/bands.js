$(function() {
  bandDetail = new BandDetailView();
  bands = new BandsCollection();
  bandsView = new BandListView({
    collection: bands
  });
  bands.fetch({reset: true});
});
