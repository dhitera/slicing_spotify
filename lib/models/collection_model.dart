class CollectionModel {
  String name;
  String cardType;
  String imgPath;
  String cardMaker;

  CollectionModel({
    required this.name,
    required this.cardType,
    required this.imgPath,
    required this.cardMaker,
  });

  static List<CollectionModel> getCollection() {
    List<CollectionModel> collection = [];

    collection.add(CollectionModel(
        name: "Lagu yang Disukai",
        cardType: "Playlist",
        imgPath: "assets/images/liked.jpg",
        cardMaker: "401 lagu"));

    collection.add(CollectionModel(
        name: "Discover Weekly",
        cardType: "Playlist",
        imgPath: "assets/images/ProfilePict.jpg",
        cardMaker: "Spotify"));

    collection.add(CollectionModel(
        name: "Musik buat berak",
        cardType: "Playlist",
        imgPath: "assets/images/imgCard4.jpeg",
        cardMaker: "Radithya"));

    collection.add(CollectionModel(
        name: "The Lorem of Ipsum",
        cardType: "Album",
        imgPath: "assets/images/ProfilePict.jpg",
        cardMaker: "King"));

    collection.add(CollectionModel(
        name: "Dolor sit Amet...",
        cardType: "Album",
        imgPath: "assets/images/ProfilePict.jpg",
        cardMaker: "Queen Crimson"));

    collection.add(CollectionModel(
        name: "Orange Floyd",
        cardType: "Artis",
        imgPath: "assets/images/ProfilePict.jpg",
        cardMaker: ""));

    collection.add(CollectionModel(
        name: "Esidisi",
        cardType: "Artis",
        imgPath: "assets/images/ProfilePict.jpg",
        cardMaker: ""));

    return collection;
  }
}
