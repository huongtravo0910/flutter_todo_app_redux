import 'package:redux_example/models/todo.dart';
import 'package:redux_example/redux/actions/actions.dart';
import 'package:redux_example/redux/state/app_state.dart';
import 'package:redux_example/repo/i_todos_repository.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:built_collection/built_collection.dart';

class TodosEpic implements EpicClass<AppState> {
  final ITodosRepository repository;
  TodosEpic(this.repository);
  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics<AppState>([
      _getTodos,
      _addTodos,
      _updateTodo,
      _deleteTodo,
    ])(actions, store);
  }

  Stream<dynamic> _getTodos(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is GetTodosAction) {
        yield GetLoadingTodosAction();
        try {
          yield GetResultTodosAction((b) async =>
              b..todos = ListBuilder<Todo>(await repository.getTodos()));
        } catch (e) {
          yield GetErrorTodosAction();
        }
      }
    }
  }

  Stream<dynamic> _updateTodo(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is UpdateToCompletedTodoAction) {
        yield UpdateLoadingCompletedTodoAction();
        try {
          await repository.updateTodo(action.completedTodoMap.asMap()[action.id]);
        } catch (e) {
          yield UpdateErrorCompletedTodoAction();
        }
      }
    }
  }

  Stream<dynamic> _addTodos(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is AddTodoAction) {
        yield AddLoadingTodoAction();
        try {
          await repository.insertTodo(action.todoMap.asMap()[action.id]);
        } catch (e) {
          yield AddErrorTodoAction();
        }
      }
    }
  }

  Stream<dynamic> _deleteTodo(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is DeleteTodoAction) {
        yield DeleteLoadingTodoAction();
        try {
          await repository.deleteTodo(action.id);
        } catch (e) {
          yield DeleteErrorTodoAction();
        }
      }
    }
  }
}
