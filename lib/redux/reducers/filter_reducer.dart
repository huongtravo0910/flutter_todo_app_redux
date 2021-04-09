
import 'package:redux_example/models/filter.dart';
import 'package:redux_example/redux/actions/actions.dart';
import 'package:redux_example/redux/state/app_state.dart';
import 'package:redux/redux.dart';



final filterReducer = combineReducers<AppState>([
  TypedReducer<AppState, FilterTodosAction>(_chosenFilterReducer),
]);

AppState _chosenFilterReducer(
    AppState state, FilterTodosAction action) {
  return state.rebuild((b) => b..filter=action.newFilter);
}