class FeedModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;
  final String author;

  FeedModel({
    required this.avatarUrl,
    required this.name,
    required this.datetime,
    required this.message,
    required this.author,
  });

  static final List<FeedModel> dummyData = [
    FeedModel(
        avatarUrl: "assets/images/feed_healthcare.jpg",
        name: "Kigali Healthcare Project Exhibition",
        datetime: "Feb 14th, 2023",
        message: "Today, UGHE held an exhibition event for “Her Story” Project.",
        author: "By Francoise Mukantwari"),
    FeedModel(
        avatarUrl: "assets/images/feed_construction.jpg",
        name: "Sustainable Infrastructure in Kenya",
        datetime: "Feb 14th, 2023",
        message: "Kenya is joining the league of countries employing green sustainable architecture.",
        author: "By Clare Kanja"),
    FeedModel(
        avatarUrl: "assets/images/feed_climatechange.jpg",
        name: "Tanzania Climate Change Strategy",
        datetime: "Feb 14th, 2023",
        message: "Tanzania's updated NDC raised its 2030 economy-wide emissions reduction.",
        author: "By Brighton Mboya"),
    FeedModel(
        avatarUrl: "assets/images/feed_agriculture.jpg",
        name: "Agriculture in Gabon",
        datetime: "Feb 14th, 2023",
        message: "The Gabonese agricultural sector employs around 20% of the population.",
        author: " By Jane Duo"),
    FeedModel(
        avatarUrl: "assets/images/feed_education.png",
        name: "Education  in Malawi",
        datetime: "Feb 14th, 2023",
        message: "Secondary education in Malawi runs for 4 years.",
        author: "By John Doe"),
  ];
}
