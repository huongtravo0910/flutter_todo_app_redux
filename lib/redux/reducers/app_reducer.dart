import 'package:redux_example/redux/reducers/todo_reducer.dart';
import 'package:redux_example/redux/state/app_state.dart';
import 'filter_reducer.dart';
import 'loading_reducer.dart';
import 'package:redux/redux.dart';
// final appReducer = [loadingReducer, filterReducer, todosReducer];
// 
final appReducer =  combineReducers<AppState>([loadingReducer, filterReducer, todosReducer]);