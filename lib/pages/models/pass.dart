

class PassModel {
  final bool approved;
  final String startTimeRequested;
  final String endTimeRequested;
  final String timeLeftOrigin;
  final String timeArrivedDestination;
  final String type;
  final int student;
  final int originTeacher;
  final String originTeacher_name;
  final String location;
  final int destinationTeacher;
  final String destinationTeacher_name;
  final String description;

  PassModel(this.approved, 
    this.startTimeRequested, 
    this.endTimeRequested, 
    this.timeLeftOrigin, 
    this.timeArrivedDestination, 
    this.type,
    this.student,
    this.originTeacher,
    this.originTeacher_name,
    this.location,
    this.destinationTeacher,
    this.destinationTeacher_name,
    this.description);

  PassModel.fromJson(Map<String, dynamic> json)
      : approved = json['approved'],
        startTimeRequested = json['startTimeRequested'] == null ? ' ' : json['startTimeRequested'],
        endTimeRequested = json['endTimeRequested'] == null ? ' ' : json['endTimeRequested'],
        timeLeftOrigin = json['timeLeftOrigin'] == null ? ' ' : json['timeLeftOrigin'],
        timeArrivedDestination = json['timeArrivedDestination'] == null ? ' ' : json['timeArrivedDestination'],
        type = json['type'],
        student = json['student'],
        originTeacher = json['originTeacher'],
        originTeacher_name = json['originTeacher_name'] == null ? ' ' : json['originTeacher_name'],
        location = json['location'],
        destinationTeacher = json['destinationTeacher'],
        destinationTeacher_name = json['destinationTeacher_name'] == null ? ' ' : json['destinationTeacher_name'],
        description = json['description'] == null ? ' ' : json['description'];

  String getDestination() {
    if (this.type =='2' && this.location != null){
      return this.location;
    } else if (this.type=='1' && this.destinationTeacher_name != null) {
      return this.destinationTeacher_name;
    } else {
      return '';
    }
  }

  static String formatDateTime(String oldTime) {
    DateTime time = DateTime.parse(oldTime);
    String day = time.day.toString();
    String mon = time.month.toString();
    String yr = time.year.toString();
    String hr = time.hour.toString();
    String min = time.minute.toString();

    return day + '/' + mon + '/' + yr + ' ' + hr + ':' + min;

  }


}