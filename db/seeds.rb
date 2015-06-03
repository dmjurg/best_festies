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
  {name: 'Governors Ball', start_date: Date.parse('2015-06-05'), end_date: Date.parse('2015-06-07'), location: 'New York, NY'}
]

festivals.each do |festival|
  Festival.create(festival)
end
