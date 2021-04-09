// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';

import 'package:redux_example/models/todo.dart';
import 'package:redux_example/redux/actions/actions.dart';
import 'package:redux_example/redux/middlewares/todos_epic.dart';
import 'package:redux_example/redux/reducers/app_reducer.dart';
import 'package:redux_example/redux/state/app_state.dart';
import 'package:redux_example/repo/i_todos_repository.dart';


class MockTodosRepository extends Mock implements ITodosRepository {}

void main() {
  group('Save State MiddleWare', () {
    test('should load the todos in response to a LoadTodosAction', () async {
      //Setup
      final repository = MockTodosRepository();
      final store = Store<AppState>(
        appReducer,
        initialState: AppState(),
        middleware: [EpicMiddleware<AppState>(TodosEpic(repository))],
      );
      final todos = [
        Todo((b) => b..title = "hello"),
      ];

      when(repository.getTodos()).thenAnswer((_) => Future.value(todos));

      //Action
      store.dispatch(GetTodosAction());
      await Future.delayed(Duration(milliseconds: 1));
      //Assert
      verify(repository.getTodos());

      //verify xem mock function co dc goi
    });

    test('should update the todo in response to a UpdateToCompletedTodoAction',
        () async {
      final repository = MockTodosRepository();
      final todo = Todo((b) => b
        ..todoId = 0
        ..title = "Hallo");
      final store = Store<AppState>(
        appReducer,
        initialState: AppState((b) => b..todos = ListBuilder([todo])),
        middleware: [EpicMiddleware<AppState>(TodosEpic(repository))],
      );

      store.dispatch(UpdateToCompletedTodoAction((b) => b
        ..id = todo.todoId
        ..completedTodoMap = MapBuilder({todo.todoId: todo})));
      await Future.delayed(Duration(milliseconds: 1));
      verify(repository.updateTodo(todo));
    });
    test('should delete the todo in response to a DeleteTodoAction', () async {
      final repository = MockTodosRepository();
      final todo = Todo((b) => b
        ..todoId = 0
        ..title = "Halo");
      final store = Store<AppState>(
        appReducer,
        initialState: AppState((b) => b..todos = ListBuilder([todo])),
        middleware: [EpicMiddleware<AppState>(TodosEpic(repository))],
      );
      store.dispatch(DeleteTodoAction((b) => b..id = 0));
      await Future.delayed(Duration(milliseconds: 1));
      verify(repository.deleteTodo(todo.todoId));
    });
    test('should add the todo in response to a AddTodoAction', () async {
      final repository = MockTodosRepository();
      final store = Store<AppState>(
        appReducer,
        initialState: AppState(),
        middleware: [EpicMiddleware<AppState>(TodosEpic(repository))],
      );
      final todo = Todo((b) => b..title = "Halo");

      store.dispatch(AddTodoAction((b) => b
        ..id = todo.todoId
        ..todoMap = MapBuilder({todo.todoId: todo})));
      await Future.delayed(Duration(milliseconds: 1));
      verify(repository.insertTodo(todo));
    });
  });
}
