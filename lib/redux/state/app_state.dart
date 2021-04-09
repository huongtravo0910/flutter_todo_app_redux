import 'package:built_value/built_value.dart';
import 'package:redux_example/models/filter.dart';
import 'package:redux_example/models/todo.dart';
import 'package:built_collection/built_collection.dart';

part 'app_state.g.dart';

abstract class AbstractToDoFeature {
  final AppState appState;
  AbstractToDoFeature({this.appState});
}

abstract class AppState implements Built<AppState, AppStateBuilder> {
  Filter get filter;
  @nullable
  BuiltList<Todo> get todos;
  bool get isLoading;

  AppState._();
  static void _initializeBuilder(AppStateBuilder builder) => builder
    ..filter = Filter.all
    ..todos=ListBuilder<Todo>([])
    ..isLoading = true;
  factory AppState([updates(AppStateBuilder b)]) = _$AppState;
}
