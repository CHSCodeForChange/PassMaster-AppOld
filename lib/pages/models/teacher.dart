
class TeacherModel {
  final String name;
  final int pk;

  TeacherModel(this.name, this.pk);

  TeacherModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        pk = json['pk'];
}