class Meal {
  final String? category;
  final String? name;
  final String? serving;
  final double? protein;
  final double? carb;
  final double? fat;
  final int? calories;

  Meal(
      {this.protein,
      this.carb,
      this.fat,
      this.calories,
      this.category,
      this.name,
      this.serving});
}
