import 'package:flutter_test/flutter_test.dart';
import 'package:redux_example/models/filter.dart';
import 'package:redux_example/models/todo.dart';
import 'package:redux_example/redux/actions/actions.dart';
import 'package:redux_example/redux/reducers/app_reducer.dart';
import 'package:redux_example/redux/state/app_state.dart';
import 'package:redux/redux.dart';

void main() {
  group('State Reducer', () {
    test('should add a todo in response to a AddTodoAction', () {
      final store = Store<AppState>(
        appReducer,
        initialState: AppState(),
      );
      final todo = Todo((b) => b..title = "Hallo");
      store.dispatch(AddTodoAction((b) => b
        ..id = todo.todoId
        ..todoMap[todo.todoId] = todo));

      expect(store.state.todos, [todo]);
    });

    test('should delete a todo in response to a DeleteTodoAction', () {
      final todo = Todo((b) => b..title = "Hallos");
      final store = Store<AppState>(
        appReducer,
        initialState: AppState((b) => b..todos.add(todo)),
      );

      expect(store.state.todos, [todo]);

      store.dispatch(DeleteTodoAction((b) => b..id = todo.todoId));

      expect(store.state.todos, []);
    });

    test(
        'should update a todo to completed in response to a UpdateCompletedTodoAction',
        () {
      final todo = Todo((b) => b..title = 'Hallo');
      final updatedTodo = todo.rebuild((b) => b..isCompleted = true);
      final store = Store<AppState>(
        appReducer,
        initialState: AppState((b) => b..todos.add(todo)),
      );
      store.dispatch(UpdateToCompletedTodoAction((b) => b
        ..id = todo.todoId
        ..completedTodoMap[updatedTodo.todoId] = updatedTodo));

      expect(store.state.todos, [updatedTodo]);
    });
  });

  test('should update the Filter', () {
    final store = Store<AppState>(
      appReducer,
      initialState: AppState((b) => b..filter = Filter.completed),
    );

    store.dispatch((FilterTodosAction((b) => b..newFilter = Filter.completed)));

    expect(store.state.filter, Filter.completed);
  });
}
