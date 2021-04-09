import 'package:redux_example/models/todo.dart';
import 'package:redux_example/redux/actions/actions.dart';
import 'package:redux_example/redux/state/app_state.dart';
import 'package:redux/redux.dart';

final todosReducer = combineReducers<AppState>([
  TypedReducer<AppState, AddTodoAction>(_addTodo),
  TypedReducer<AppState, DeleteTodoAction>(_deleteTodo),
  TypedReducer<AppState, UpdateToCompletedTodoAction>(_updateTodo),
  TypedReducer<AppState, GetResultTodosAction>(_getTodos),
]);

AppState _addTodo(AppState state, AddTodoAction action) {
  return state.rebuild((b) => b..todos.add(action.todoMap[action.id]));
}

AppState _deleteTodo(AppState state, DeleteTodoAction action) {
  return state
      .rebuild((b) => b..todos.removeWhere((todo) => todo.todoId == action.id));
}

AppState _updateTodo(AppState state, UpdateToCompletedTodoAction action) {
  List<Todo> list = state.todos.toList();
  for (Todo todo in list) {
    if (todo.todoId == action.id) {
      todo.rebuild((b) => b..title = action.completedTodoMap[action.id].title);
    }
  }

  int index = list.indexWhere((todo) => todo.todoId == action.id);
  list[index] = action.completedTodoMap[action.id];
  // list.add(action.completedTodoMap[action.id]);
  return state.rebuild((b) => b..todos.replace(list));
}

AppState _getTodos(AppState state, GetResultTodosAction action) {
  return state.rebuild((b) => b..todos.addAll(action.todos));
}
