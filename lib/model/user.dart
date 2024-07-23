import 'package:dart_mappable/dart_mappable.dart';
import 'package:fire_crud/fire_crud.dart';
import 'package:noteapp/model/note.dart';

part 'user.mapper.dart';

@MappableClass()
class User with UserMappable, ModelCrud {
  final String name;
  final String color;
  final bool dark;

  User({this.name = 'Krakkas', this.dark = true, this.color = '#1C1571'});

  @override
  List<FireModel<ModelCrud>> get childModels => [
        FireModel<Note>(
            toMap: (note) => note.toMap(),
            fromMap: (map) => NoteMapper.fromMap(map),
            collection: 'note',
            model: Note())
      ];
}
