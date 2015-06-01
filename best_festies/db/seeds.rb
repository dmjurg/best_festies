Band.destroy_all;
Festival.destroy_all;
Genre.destroy_all;
Region.destroy_all;

bands = Band.create([
  {
    name: 'Sturgill Simpson',
    image: 'http://assets.rollingstone.com/assets/images/story/is-sturgill-simpson-country-musics-savior-not-if-he-can-help-it-20140603/20140602-sturgillsimpson-x624-1401654140.jpg'
  },
  {
    name: 'ODESZA',
    image: 'http://www.audiofemme.com/wp-content/uploads/2014/09/Odesza-Bronson-Selling.jpg'
  },
  {
    name: 'Glass Animals',
    image: 'http://media.salon.com/2015/02/4839fbcc-ec2d-a6b1-4064-59087b5df601.jpg'
  },
  {
    name: 'Run the Jewels',
    image: 'http://www.monsterfresh.com/wp-content/uploads/2014/03/run-the-jewels-video-chains-1024x552.jpg'

  },
  {
    name: 'Tame Impala',
    image: 'http://music.mxdwn.com/wp-content/uploads/2015/04/TameImpala.jpg'
  },
  {
    name: 'Shakey Graves',
    image: 'http://i.ytimg.com/vi/RNsGJiVvmF0/maxresdefault.jpg'
  },
  {
    name: 'Strand of Oaks',
    image: 'http://www.premierguitar.com/ext/resources/images/content/Music-Blog/Strand-of-Oaks-feat.jpg?1404849053'
  },
  {
    name: 'Sylvan Esso',
    image: 'http://www.gwarlingo.com/wp-content/uploads/2014/07/Sylvan-Esso1.jpg'
  },
  {
    name: 'Tove Lo',
    image: 'http://cdn.shure.com/artist/hero_image/355/Tove-Lo.jpg'
  },
  {
    name: 'Hozier',
    image: 'http://image3.redbull.com/rbcom/010/2014-07-30/1331667861521_3/0012/0/1245/0/3339/3149/1500/3/meet-ireland-s-hozier.jpg'
  },
  {
    name: 'Vance Joy',
    image: 'http://lolp2.c3cdn.com/wp/wp-content/uploads/2014/03/Vance_Joy_-_101-copy.jpg'
  },
  {
    name: 'Gary Clark Jr.',
    image: 'http://tonereport.com/uploads/img/gary-clarke.jpg'
  }
]);

festivals = Festival.create([
  {
    name: 'Coachella',
    start_date: Date.parse('2015-04-10'),
    end_date: Date.parse('2015-04-12'),
    location: 'Indio, CA'
  },
  {
    name: 'Bonnaroo',
    start_date: Date.parse('2015-06-11'),
    end_date: Date.parse('2015-06-14'),
    location: 'Manchester, TN'
  },
  {
    name: 'Lollapalooza',
    start_date: Date.parse('2015-07-31'),
    end_date: Date.parse('2015-08-02'),
    location: 'Chicago, IL'
  },
  {
    name: 'Ultra',
    start_date: Date.parse('2015-03-27'),
    end_date: Date.parse('2015-03-29'),
    location: 'Miami, FL'
  },
  {
    name: 'Governors Ball',
    start_date: Date.parse('2015-06-05'),
    end_date: Date.parse('2015-06-07'),
    location: 'New York, NY'
  },
  {
    name: 'Firefly',
    start_date: Date.parse('2015-06-18'),
    end_date: Date.parse('2015-06-21'),
    location: 'Dover, DE'
  }
]);

genres = Genre.create([
  {
    name: 'Country'
  },
  {
    name: 'EDM'
  },
  {
    name: 'Indie'
  },
  {
    name: 'Rock'
  },
  {
    name: 'Hip Hop'
  },
  {
    name: 'Pop'
  }
]);

regions = Region.create([
  {
    name: 'Northeast'
  },
  {
    name: 'Southeast'
  },
  {
    name: 'West'
  },
  {
    name: 'South'
  },
  {
    name: 'Middle America'
  }

])
