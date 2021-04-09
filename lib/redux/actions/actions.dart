import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:redux_example/models/filter.dart';
import 'package:redux_example/models/todo.dart';


part 'actions.g.dart';

abstract class TodoAction {}


//****Get Todos Actions******

class GetTodosAction implements TodoAction{} 

class GetLoadingTodosAction implements TodoAction{}

class GetErrorTodosAction implements TodoAction{}

abstract class GetResultTodosAction
    implements Built<GetResultTodosAction, GetResultTodosActionBuilder>, TodoAction {
  BuiltList<Todo> get todos;

  GetResultTodosAction._();

  factory GetResultTodosAction([updates(GetResultTodosActionBuilder b)]) =
      _$GetResultTodosAction;
}


//*****Update One Completed Todo Actions******


class UpdateLoadingCompletedTodoAction implements TodoAction{} 

class UpdateErrorCompletedTodoAction implements TodoAction{} 

abstract class UpdateToCompletedTodoAction 
    implements
        Built<UpdateToCompletedTodoAction , UpdateToCompletedTodoActionBuilder>, TodoAction {
  int get id;
  BuiltMap<int, Todo> get completedTodoMap;

  UpdateToCompletedTodoAction._();

  factory UpdateToCompletedTodoAction(
          [updates(UpdateToCompletedTodoActionBuilder b)]) =
      _$UpdateToCompletedTodoAction;
}


//*******Add One Todo Action*******

class AddLoadingTodoAction implements TodoAction{} 

class AddErrorTodoAction implements TodoAction{} 

abstract class AddTodoAction 
    implements Built<AddTodoAction , AddTodoActionBuilder>, TodoAction {
  int get id;
  BuiltMap<int, Todo> get todoMap;

  AddTodoAction ._();

  factory AddTodoAction ([updates (AddTodoActionBuilder b)]) =
      _$AddTodoAction ;
}


//******Delete One Todo Action******


class DeleteLoadingTodoAction implements TodoAction{} 

class DeleteErrorTodoAction implements TodoAction{} 

abstract class DeleteTodoAction
    implements Built<DeleteTodoAction, DeleteTodoActionBuilder>, TodoAction {
  @nullable
  int get id;

  DeleteTodoAction._();

  factory DeleteTodoAction([updates(DeleteTodoActionBuilder b)]) =
      _$DeleteTodoAction;
}



//*****Filter Todos Action*******

abstract class FilterTodosAction
    implements Built<FilterTodosAction, FilterTodosActionBuilder>, TodoAction {
  Filter get newFilter;

  FilterTodosAction._();

  factory FilterTodosAction([updates(FilterTodosActionBuilder b)]) =
      _$FilterTodosAction;
}
