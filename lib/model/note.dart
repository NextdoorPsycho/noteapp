import 'package:dart_mappable/dart_mappable.dart';
import 'package:fire_crud/fire_crud.dart';

part 'note.mapper.dart';

@MappableClass()
class Note with NoteMappable, ModelCrud {
  final String title;
  final String description;
  final bool? locked;
  final String color;
  final int lastModified;

  Note(
      {this.title = "New Note",
      this.description = "",
      this.locked,
      this.color = "#FFFFFF",
      this.lastModified = 0});

  @override
  List<FireModel<ModelCrud>> get childModels => [];
}
