import 'package:hive/hive.dart';

class NoteModel extends HiveObject {
  String title;
  String subTitle;
  final String date;
  int color;

  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
