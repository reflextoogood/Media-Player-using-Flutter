class Song {
  String loc;
  String title;
  String artist;
  String category;
  String img;

  Song({this.title, this.artist, this.category, this.img, this.loc});
}

Song blackholeserenade = Song(
    loc: "ES_Black Hole Serenade - White Drift.mp3",
    title: "Black Hole Serenade",
    category: "Beats",
    img: "black_hole.jpg",
    artist: "White Drift");

Song whenigetsober = Song(
    loc: "ES_When I Get Sober (Instrumental Version) - waykap.mp3",
    title: "White Drift",
    category: "Beats",
    img: "waykap.jpg",
    artist: "waykap");

Song summer = Song(
    loc: "summer.mp3",
    title: "Summer",
    category: "Calm",
    img: "summer_pic.jpeg",
    artist: "Nature");

Song sea = Song(
    loc: "sea.mp3",
    title: "Sea",
    category: "Calm",
    img: "sea_waves.jpeg",
    artist: "Nature");

Song godzilla = Song(
    loc: "Eminem - Godzilla ft. Juice WRLD (Dir. by @_ColeBennett_).mp3",
    title: "Godzillaft. Juice WRLD",
    category: "Hip Hop",
    img: "Godzilla.jpg",
    artist: "Eminem");

Song thebox = Song(
    loc: "Roddy Ricch - The Box [Official Music Video].mp3",
    title: "The Box",
    category: "Hip Hop",
    img: "The_box.jpg",
    artist: "Roddy Ricch");

Song memories = Song(
    loc: "Maroon 5 - Memories (Official Video).mp3",
    title: "Memories",
    category: "Jazz Pop",
    img: "Memories.jpg",
    artist: "Maroon 5");

Song streetsax = Song(
    loc: "'DANCE MONKEY' - STREET SAX PERFORMANCE.mp3",
    title: "Street Sax",
    category: "Jazz Pop",
    img: "Danielle.jpg",
    artist: "Maroon 5");

class AllSongs {
  List<Song> songs = [
    blackholeserenade,
    whenigetsober,
    summer,
    sea,
    godzilla,
    thebox,
    memories,
    streetsax
  ];
}
