import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:redux_example/models/todo.dart';
part 'todo_list_vm.g.dart';

abstract class TodoListVM implements Built<TodoListVM, TodoListVMBuilder> {
  BuiltList<Todo> get todos;

  TodoListVM._();

  factory TodoListVM([updates(TodoListVMBuilder b)]) = _$TodoListVM;
}