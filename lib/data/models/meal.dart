class Meal {
  final String? category;
  final String? name;
  final String? serving;
  final String? description;
  final double? cholesterol;
  final double? potassium;
  final double? sodium;
  final double? calcium;
  final double? magnesium;
  final double? zinc;
  final double? vitaminA;
  final double? vitaminB12;
  final double? vitaminB6;
  final double? vitaminC;
  final double? vitaminD;
  final double? vitaminE;
  final double? protein;
  final double? carb;
  final double? fat;
  final int? calories;

  Meal(
      {this.description,
      this.cholesterol,
      this.potassium,
      this.sodium,
      this.calcium,
      this.magnesium,
      this.zinc,
      this.vitaminA,
      this.vitaminB12,
      this.vitaminB6,
      this.vitaminC,
      this.vitaminD,
      this.vitaminE,
      this.protein,
      this.carb,
      this.fat,
      this.calories,
      this.category,
      this.name,
      this.serving});
}
