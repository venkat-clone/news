

enum SortBy{
  alphabetically('Alphabetically'),
  date('Date'),
  type('Type');
  final String title;
  const SortBy(this.title);



  static fromJson(String json) =>  SortBy.values.firstWhere((element) => element.title == json);
  static toJson(SortBy? sortBy) => sortBy?.title;
}

enum SortByType{
  ascending('ascending'),
  descending('descending');
  const SortByType(this.string);
  final String string;
  static fromJson(String json) =>  SortByType.values.firstWhere((element) => element.toString() == json);
  static toJson(SortByType? sortByType) => sortByType?.string;
}