// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodoListVM extends TodoListVM {
  @override
  final BuiltList<Todo> todos;

  factory _$TodoListVM([void Function(TodoListVMBuilder) updates]) =>
      (new TodoListVMBuilder()..update(updates)).build();

  _$TodoListVM._({this.todos}) : super._() {
    BuiltValueNullFieldError.checkNotNull(todos, 'TodoListVM', 'todos');
  }

  @override
  TodoListVM rebuild(void Function(TodoListVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoListVMBuilder toBuilder() => new TodoListVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoListVM && todos == other.todos;
  }

  @override
  int get hashCode {
    return $jf($jc(0, todos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodoListVM')..add('todos', todos))
        .toString();
  }
}

class TodoListVMBuilder implements Builder<TodoListVM, TodoListVMBuilder> {
  _$TodoListVM _$v;

  ListBuilder<Todo> _todos;
  ListBuilder<Todo> get todos => _$this._todos ??= new ListBuilder<Todo>();
  set todos(ListBuilder<Todo> todos) => _$this._todos = todos;

  TodoListVMBuilder();

  TodoListVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todos = $v.todos.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoListVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TodoListVM;
  }

  @override
  void update(void Function(TodoListVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TodoListVM build() {
    _$TodoListVM _$result;
    try {
      _$result = _$v ?? new _$TodoListVM._(todos: todos.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todos';
        todos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TodoListVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
