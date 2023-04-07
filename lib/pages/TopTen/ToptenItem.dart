class GrandItem {
  final int id;
  final String name;
  final String name_grand;
  final String image;

  GrandItem({
    required this.id,
    required this.name,
    required this.name_grand,
    required this.image});

  @override
  String toString() {
    return '$id $name $name_grand';
  }
}