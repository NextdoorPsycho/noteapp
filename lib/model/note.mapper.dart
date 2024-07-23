// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'note.dart';

class NoteMapper extends ClassMapperBase<Note> {
  NoteMapper._();

  static NoteMapper? _instance;
  static NoteMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Note';

  static String _$title(Note v) => v.title;
  static const Field<Note, String> _f$title =
      Field('title', _$title, opt: true, def: "New Note");
  static String _$description(Note v) => v.description;
  static const Field<Note, String> _f$description =
      Field('description', _$description, opt: true, def: "");
  static bool? _$locked(Note v) => v.locked;
  static const Field<Note, bool> _f$locked =
      Field('locked', _$locked, opt: true);
  static String _$color(Note v) => v.color;
  static const Field<Note, String> _f$color =
      Field('color', _$color, opt: true, def: "#FFFFFF");
  static int _$lastModified(Note v) => v.lastModified;
  static const Field<Note, int> _f$lastModified =
      Field('lastModified', _$lastModified, opt: true, def: 0);

  @override
  final MappableFields<Note> fields = const {
    #title: _f$title,
    #description: _f$description,
    #locked: _f$locked,
    #color: _f$color,
    #lastModified: _f$lastModified,
  };

  static Note _instantiate(DecodingData data) {
    return Note(
        title: data.dec(_f$title),
        description: data.dec(_f$description),
        locked: data.dec(_f$locked),
        color: data.dec(_f$color),
        lastModified: data.dec(_f$lastModified));
  }

  @override
  final Function instantiate = _instantiate;

  static Note fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Note>(map);
  }

  static Note fromJson(String json) {
    return ensureInitialized().decodeJson<Note>(json);
  }
}

mixin NoteMappable {
  String toJson() {
    return NoteMapper.ensureInitialized().encodeJson<Note>(this as Note);
  }

  Map<String, dynamic> toMap() {
    return NoteMapper.ensureInitialized().encodeMap<Note>(this as Note);
  }

  NoteCopyWith<Note, Note, Note> get copyWith =>
      _NoteCopyWithImpl(this as Note, $identity, $identity);
  @override
  String toString() {
    return NoteMapper.ensureInitialized().stringifyValue(this as Note);
  }

  @override
  bool operator ==(Object other) {
    return NoteMapper.ensureInitialized().equalsValue(this as Note, other);
  }

  @override
  int get hashCode {
    return NoteMapper.ensureInitialized().hashValue(this as Note);
  }
}

extension NoteValueCopy<$R, $Out> on ObjectCopyWith<$R, Note, $Out> {
  NoteCopyWith<$R, Note, $Out> get $asNote =>
      $base.as((v, t, t2) => _NoteCopyWithImpl(v, t, t2));
}

abstract class NoteCopyWith<$R, $In extends Note, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? title,
      String? description,
      bool? locked,
      String? color,
      int? lastModified});
  NoteCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NoteCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Note, $Out>
    implements NoteCopyWith<$R, Note, $Out> {
  _NoteCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Note> $mapper = NoteMapper.ensureInitialized();
  @override
  $R call(
          {String? title,
          String? description,
          Object? locked = $none,
          String? color,
          int? lastModified}) =>
      $apply(FieldCopyWithData({
        if (title != null) #title: title,
        if (description != null) #description: description,
        if (locked != $none) #locked: locked,
        if (color != null) #color: color,
        if (lastModified != null) #lastModified: lastModified
      }));
  @override
  Note $make(CopyWithData data) => Note(
      title: data.get(#title, or: $value.title),
      description: data.get(#description, or: $value.description),
      locked: data.get(#locked, or: $value.locked),
      color: data.get(#color, or: $value.color),
      lastModified: data.get(#lastModified, or: $value.lastModified));

  @override
  NoteCopyWith<$R2, Note, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _NoteCopyWithImpl($value, $cast, t);
}
