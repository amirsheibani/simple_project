mixin DateHelper {
  int getPastDuration(String? startDate, int duration) {
    DateTime startDateTime = DateTime.parse(startDate ?? "");
    return DateTime.now().difference(startDateTime).inDays;
  }

  int getLeftDuration(String? startDate, int duration) {
    DateTime startDateTime = DateTime.parse(startDate ?? "");
    return (duration * 30) - DateTime.now().difference(startDateTime).inDays;
  }
}
