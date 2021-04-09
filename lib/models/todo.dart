import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';
part 'todo.g.dart';

var _autoIncrement = 0;

abstract class Todo implements Built<Todo, TodoBuilder> {
  int get todoId;
  String get title;
  bool get isCompleted;

  Todo._();

  // factory Todo([updates(TodoBuilder b)]) => new _$Todo((b) => b
  //   ..isCompleted = false
  //   ..todoId = ++_autoIncrement);
  //
   static void _initializeBuilder(
          TodoBuilder builder) =>
      builder
        ..todoId = ++_autoIncrement
        ..isCompleted = false;

  factory Todo([updates(TodoBuilder b)]) = _$Todo;

  String toJson() {
    return json.encode(serializers.serializeWith(Todo.serializer, this));
  }

  static Todo fromJson(String jsonString) {
    return serializers.deserializeWith(
        Todo.serializer, json.decode(jsonString));
  }

  static Serializer<Todo> get serializer => _$todoSerializer;
}
