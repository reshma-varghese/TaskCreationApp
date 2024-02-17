class Task {
  final String title;
  final String description;
  final String employee;

  Task({required this.title, required this.description,required this.employee});

  String get desc => description;

  String get getTitle => title;

  String get getEmployee => employee;
}
