require 'httparty';

Band.destroy_all;
Festival.destroy_all;
Genre.destroy_all;
Region.destroy_all;

bands = [
  "Sturgill Simpson",
  "Billy Joel",
  "Mumford and Sons",
  "Deadmau5",
  "Kendrick Lamar",
  "Robert Plant and the Sensational Space Shifters",
  "My Morning Jacket",
  "Bassnectar",
  "Childish Gambino",
  "Flume",
  "Ben Harper and the Innocent Criminals",
  "Spoon",
  "The War on Drugs",
  "Ben Folds",
  "ODESZA",
  "Interpol",
  "Glass Animals",
  "Steely Dan",
  "Alesso",
  "Run the Jewels",
  "Tame Impala",
  "Alabama Shakes",
  "Ride",
  "Nero",
  "Shakey Graves",
  "Strand of Oaks",
  "Sylvan Esso",
  "Tove Lo",
  "Hozier",
  "Vance Joy",
  "Gary Clark Jr.",
  "The Weeknd",
  "Alt-J",
  "Axwell^Ingrosso",
  "Belle and Sebastian",
  "Jack White",
  "Ratatat",
  "AC/DC",
  "Florence and the Machine",
  "Drake",
  "Kaskade",
  "Ryan Adams",
  "David Guetta",
  "St. Vincent",
  "Paul McCartney",
  "Metallica",
  "Sam Smith",
  "Of Monsters and Men",
  "A$AP Rocky",
  "Kid Cudi",
  "Brand New",
  "TV on the Radio",
  "Dillon Francis",
  "Kygo",
  "Carnage",
  "Twenty One Pilots",
  "Avicii",
  "Skrillex",
  "Steve Aoki",
  "Tiesto",
  "RAC",
  "Porter Robinson",
  "The Black Keys",
  "Lana Del Rey",
  "Bjork",
  "Chromeo",
  "Noel Gallagher's High Flying Birds",
  "The Decemberists",
  "Hot Chip",
  "Little Dragon",
  "Sbtrkt",
  "Conor Oberst"
]

bands.sort_by{|string| string.downcase}.each do |band|
  Band.create({
    name: band
  })
end

festivals = [
  {name: 'Coachella', start_date: Date.parse('2015-04-10'), end_date: Date.parse('2015-04-12'), location: 'Indio, CA'},
  {name: 'Bonnaroo', start_date: Date.parse('2015-06-11'), end_date: Date.parse('2015-06-14'), location: 'Manchester, TN'},
  {name: 'Lollapalooza', start_date: Date.parse('2015-07-31'), end_date: Date.parse('2015-08-02'), location: 'Chicago, IL'},
  {name: 'Ultra', start_date: Date.parse('2015-03-27'), end_date: Date.parse('2015-03-29'), location: 'Miami, FL'},
  {name: 'Governors Ball', start_date: Date.parse('2015-06-05'), end_date: Date.parse('2015-06-07'), location: 'New York, NY'},
  {name: 'Newport Folk Festival', start_date: Date.parse('2015-07-24'), end_date: Date.parse('2015-07-26'), location: 'Newport, RI'},
  {name: 'Firefly', start_date: Date.parse('2015-06-18'), end_date: Date.parse('2015-06-21'), location: 'Dover, DE'},
  {name: 'CounterPoint Festival', start_date: Date.parse('2015-05-22'), end_date: Date.parse('2015-05-24'), location: 'Kingston Downs, GA'},
  {name: 'Outside Lands', start_date: Date.parse('2015-08-07'), end_date: Date.parse('2015-08-09'), location: 'San Francisco, CA'},
  {name: 'Hangout Fest', start_date: Date.parse('2015-05-15'), end_date: Date.parse('2015-05-17'), location: 'Gulf Shores, AL'},
  {name: 'Shaky Knees', start_date: Date.parse('2015-05-08'), end_date: Date.parse('2015-05-10'), location: 'Atlanta, GA'},
  {name: 'Warped Tour', start_date: Date.parse('2015-06-19'), end_date: Date.parse('2015-08-08'), location: 'United States'},
  {name: 'Sasquatch', start_date: Date.parse('2015-05-23'), end_date: Date.parse('2015-05-25'), location: 'George, WA'},
  {name: 'Landmark Festival', start_date: Date.parse('2015-09-26'), end_date: Date.parse('2015-09-27'), location: 'Washington, DC'},
  {name: 'Sweetlife', start_date: Date.parse('2015-05-30'), end_date: Date.parse('2015-05-31'), location: 'Columbia, MD'},
  {name: 'Mysteryland', start_date: Date.parse('2015-05-22'), end_date: Date.parse('2015-05-25'), location: 'Bethel Woods, NY'},
  {name: 'KCON', start_date: Date.parse('2015-07-31'), end_date: Date.parse('2015-08-02'), location: 'Los Angeles, CA'},
  {name: 'Austin City Limits', start_date: Date.parse('2015-10-02'), end_date: Date.parse('2015-10-04'), location: 'Austin, TX'},
  {name: 'South by Southwest', start_date: Date.parse('2015-03-17'), end_date: Date.parse('2015-03-22'), location: 'Austin, TX'},
  {name: 'Electric Daisy Carnival', start_date: Date.parse('2015-06-19'), end_date: Date.parse('2015-06-21'), location: 'Las Vegas, NV'},
  {name: 'Moonrise', start_date: Date.parse('2015-08-08'), end_date: Date.parse('2015-08-09'), location: 'Baltimore, MD'},
  {name: 'Beale Street', start_date: Date.parse('2015-05-01'), end_date: Date.parse('2015-05-03'), location: 'Memphis, TN'},
  {name: 'Riot Fest', start_date: Date.parse('2015-09-11'), end_date: Date.parse('2015-09-13'), location: 'Chicago, IL'},
  {name: 'TomorrowWorld', start_date: Date.parse('2015-09-25'), end_date: Date.parse('2015-09-27'), location: 'Chattahoochee Hills, GA'},
  {name: 'Voodoo Music Experience', start_date: Date.parse('2015-10-30'), end_date: Date.parse('2015-11-01'), location: 'New Orleans, LA'}
]

festivals.each do |festival|
  Festival.create(festival)
end

{"Coachella" => ["AC/DC", "Tame Impala", "Interpol", "Steely Dan", "Alesso", "Alabama Shakes", "Ride", "Nero"],
 "Bonnaroo" => ["Billy Joel", "Mumford and Sons", "Deadmau5", "Kendrick Lamar", "Florence and the Machine", "Robert Plant and the Sensational Space Shifters", "My Morning Jacket", "Bassnectar", "Alabama Shakes", "Childish Gambino"],
 "Lollapalooza" => ["Paul McCartney", "Metallica", "Florence and the Machine", "Sam Smith", "Bassnectar", "The Weeknd", "Alt-J", "Alabama Shakes", "Of Monsters and Men"],
 "Ultra" => ["Alesso", "Steve Aoki", "Tiesto", "RAC", "Skrillex", "Avicii", "Axwell^Ingrosso", "Bassnectar", "Kygo", "Porter Robinson", "ODESZA"],
 "Governors Ball" => ["Drake", "The Black Keys", "Deadmau5", "Florence and the Machine", "Lana Del Rey", "My Morning Jacket", "Bjork", "Ryan Adams", "Chromeo", "Noel Gallagher's High Flying Birds", "Flume"]
 }.each do |festival_name, bands|
   festival = Festival.find_by_name(festival_name)
   bands.each do |band_name|
     band = Band.find_by_name(band_name)
     festival.bands << band
   end
  festival.save!
end
