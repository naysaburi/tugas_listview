class Player {
  final String name;
  final int number;
  final String position;
  final String profileUrl;

  Player({
    required this.name,
    required this.number,
    required this.position,
    required this.profileUrl,
  });

  Player copyWith({
    String? name,
    int? number,
    String? position,
    String? profileUrl,
  }) {
    return Player(
      name: name ?? this.name,
      number: number ?? this.number,
      position: position ?? this.position,
      profileUrl: profileUrl ?? this.profileUrl,
    );
  }
}
