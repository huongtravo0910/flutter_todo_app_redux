// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetResultTodosAction extends GetResultTodosAction {
  @override
  final BuiltList<Todo> todos;

  factory _$GetResultTodosAction(
          [void Function(GetResultTodosActionBuilder) updates]) =>
      (new GetResultTodosActionBuilder()..update(updates)).build();

  _$GetResultTodosAction._({this.todos}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        todos, 'GetResultTodosAction', 'todos');
  }

  @override
  GetResultTodosAction rebuild(
          void Function(GetResultTodosActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetResultTodosActionBuilder toBuilder() =>
      new GetResultTodosActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetResultTodosAction && todos == other.todos;
  }

  @override
  int get hashCode {
    return $jf($jc(0, todos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetResultTodosAction')
          ..add('todos', todos))
        .toString();
  }
}

class GetResultTodosActionBuilder
    implements Builder<GetResultTodosAction, GetResultTodosActionBuilder> {
  _$GetResultTodosAction _$v;

  ListBuilder<Todo> _todos;
  ListBuilder<Todo> get todos => _$this._todos ??= new ListBuilder<Todo>();
  set todos(ListBuilder<Todo> todos) => _$this._todos = todos;

  GetResultTodosActionBuilder();

  GetResultTodosActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todos = $v.todos.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetResultTodosAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetResultTodosAction;
  }

  @override
  void update(void Function(GetResultTodosActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetResultTodosAction build() {
    _$GetResultTodosAction _$result;
    try {
      _$result = _$v ?? new _$GetResultTodosAction._(todos: todos.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todos';
        todos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetResultTodosAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateToCompletedTodoAction extends UpdateToCompletedTodoAction {
  @override
  final int id;
  @override
  final BuiltMap<int, Todo> completedTodoMap;

  factory _$UpdateToCompletedTodoAction(
          [void Function(UpdateToCompletedTodoActionBuilder) updates]) =>
      (new UpdateToCompletedTodoActionBuilder()..update(updates)).build();

  _$UpdateToCompletedTodoAction._({this.id, this.completedTodoMap})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, 'UpdateToCompletedTodoAction', 'id');
    BuiltValueNullFieldError.checkNotNull(
        completedTodoMap, 'UpdateToCompletedTodoAction', 'completedTodoMap');
  }

  @override
  UpdateToCompletedTodoAction rebuild(
          void Function(UpdateToCompletedTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateToCompletedTodoActionBuilder toBuilder() =>
      new UpdateToCompletedTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateToCompletedTodoAction &&
        id == other.id &&
        completedTodoMap == other.completedTodoMap;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), completedTodoMap.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateToCompletedTodoAction')
          ..add('id', id)
          ..add('completedTodoMap', completedTodoMap))
        .toString();
  }
}

class UpdateToCompletedTodoActionBuilder
    implements
        Builder<UpdateToCompletedTodoAction,
            UpdateToCompletedTodoActionBuilder> {
  _$UpdateToCompletedTodoAction _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  MapBuilder<int, Todo> _completedTodoMap;
  MapBuilder<int, Todo> get completedTodoMap =>
      _$this._completedTodoMap ??= new MapBuilder<int, Todo>();
  set completedTodoMap(MapBuilder<int, Todo> completedTodoMap) =>
      _$this._completedTodoMap = completedTodoMap;

  UpdateToCompletedTodoActionBuilder();

  UpdateToCompletedTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _completedTodoMap = $v.completedTodoMap.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateToCompletedTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateToCompletedTodoAction;
  }

  @override
  void update(void Function(UpdateToCompletedTodoActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateToCompletedTodoAction build() {
    _$UpdateToCompletedTodoAction _$result;
    try {
      _$result = _$v ??
          new _$UpdateToCompletedTodoAction._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'UpdateToCompletedTodoAction', 'id'),
              completedTodoMap: completedTodoMap.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'completedTodoMap';
        completedTodoMap.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpdateToCompletedTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AddTodoAction extends AddTodoAction {
  @override
  final int id;
  @override
  final BuiltMap<int, Todo> todoMap;

  factory _$AddTodoAction([void Function(AddTodoActionBuilder) updates]) =>
      (new AddTodoActionBuilder()..update(updates)).build();

  _$AddTodoAction._({this.id, this.todoMap}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'AddTodoAction', 'id');
    BuiltValueNullFieldError.checkNotNull(todoMap, 'AddTodoAction', 'todoMap');
  }

  @override
  AddTodoAction rebuild(void Function(AddTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddTodoActionBuilder toBuilder() => new AddTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddTodoAction && id == other.id && todoMap == other.todoMap;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), todoMap.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddTodoAction')
          ..add('id', id)
          ..add('todoMap', todoMap))
        .toString();
  }
}

class AddTodoActionBuilder
    implements Builder<AddTodoAction, AddTodoActionBuilder> {
  _$AddTodoAction _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  MapBuilder<int, Todo> _todoMap;
  MapBuilder<int, Todo> get todoMap =>
      _$this._todoMap ??= new MapBuilder<int, Todo>();
  set todoMap(MapBuilder<int, Todo> todoMap) => _$this._todoMap = todoMap;

  AddTodoActionBuilder();

  AddTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _todoMap = $v.todoMap.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddTodoAction;
  }

  @override
  void update(void Function(AddTodoActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddTodoAction build() {
    _$AddTodoAction _$result;
    try {
      _$result = _$v ??
          new _$AddTodoAction._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'AddTodoAction', 'id'),
              todoMap: todoMap.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todoMap';
        todoMap.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DeleteTodoAction extends DeleteTodoAction {
  @override
  final int id;

  factory _$DeleteTodoAction(
          [void Function(DeleteTodoActionBuilder) updates]) =>
      (new DeleteTodoActionBuilder()..update(updates)).build();

  _$DeleteTodoAction._({this.id}) : super._();

  @override
  DeleteTodoAction rebuild(void Function(DeleteTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTodoActionBuilder toBuilder() =>
      new DeleteTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTodoAction && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteTodoAction')..add('id', id))
        .toString();
  }
}

class DeleteTodoActionBuilder
    implements Builder<DeleteTodoAction, DeleteTodoActionBuilder> {
  _$DeleteTodoAction _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  DeleteTodoActionBuilder();

  DeleteTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTodoAction;
  }

  @override
  void update(void Function(DeleteTodoActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteTodoAction build() {
    final _$result = _$v ?? new _$DeleteTodoAction._(id: id);
    replace(_$result);
    return _$result;
  }
}

class _$FilterTodosAction extends FilterTodosAction {
  @override
  final Filter newFilter;

  factory _$FilterTodosAction(
          [void Function(FilterTodosActionBuilder) updates]) =>
      (new FilterTodosActionBuilder()..update(updates)).build();

  _$FilterTodosAction._({this.newFilter}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        newFilter, 'FilterTodosAction', 'newFilter');
  }

  @override
  FilterTodosAction rebuild(void Function(FilterTodosActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterTodosActionBuilder toBuilder() =>
      new FilterTodosActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterTodosAction && newFilter == other.newFilter;
  }

  @override
  int get hashCode {
    return $jf($jc(0, newFilter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FilterTodosAction')
          ..add('newFilter', newFilter))
        .toString();
  }
}

class FilterTodosActionBuilder
    implements Builder<FilterTodosAction, FilterTodosActionBuilder> {
  _$FilterTodosAction _$v;

  Filter _newFilter;
  Filter get newFilter => _$this._newFilter;
  set newFilter(Filter newFilter) => _$this._newFilter = newFilter;

  FilterTodosActionBuilder();

  FilterTodosActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newFilter = $v.newFilter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterTodosAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilterTodosAction;
  }

  @override
  void update(void Function(FilterTodosActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FilterTodosAction build() {
    final _$result = _$v ??
        new _$FilterTodosAction._(
            newFilter: BuiltValueNullFieldError.checkNotNull(
                newFilter, 'FilterTodosAction', 'newFilter'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
