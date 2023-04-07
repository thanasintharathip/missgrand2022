class rewardItem {
  final int id;
  final String name;
  final String reward;
  final String image;

  rewardItem({
    required this.id,
    required this.name,
    required this.reward,
    required this.image});

  @override
  String toString() {
    return '$id $name $reward';
  }
}
