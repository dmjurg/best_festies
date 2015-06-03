$(function() {
  festivalDetail = new FestivalDetailView();
  festivals = new FestivalsCollection();
  festivalsView = new FestivalListView({
    collection: festivals
  });
  festivals.fetch({reset: true});
});
