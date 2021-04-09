import 'package:redux_example/redux/actions/actions.dart';
import 'package:redux_example/redux/state/app_state.dart';
import 'package:redux/redux.dart';

final loadingReducer = combineReducers<AppState>([
  TypedReducer<AppState, GetLoadingTodosAction>(_onLoad),
  TypedReducer<AppState, UpdateLoadingCompletedTodoAction>(_onLoad),
  TypedReducer<AppState, AddLoadingTodoAction>(_onLoad),
]);

AppState _onLoad(AppState state, action) {
  return state.rebuild((b) => b..isLoading = true);
}
