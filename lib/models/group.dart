enum InterestGroup {
  SPORT,
  BASKETBALL,
  CYCLING,
  HIKING,
  COOKING,
  GARDENING,
  ARTCRAFT,
  HANDICRAFT,
}

class Group {
  final String id;
  final String name;
  final String description;
  final String groupAvatar;
  final InterestGroup groupInterest;
  final int size;

  Group(
      {this.id,
      this.name,
      this.description,
      this.groupAvatar,
      this.groupInterest,
      this.size});
}
