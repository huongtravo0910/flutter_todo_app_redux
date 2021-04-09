// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Todo> _$todoSerializer = new _$TodoSerializer();

class _$TodoSerializer implements StructuredSerializer<Todo> {
  @override
  final Iterable<Type> types = const [Todo, _$Todo];
  @override
  final String wireName = 'Todo';

  @override
  Iterable<Object> serialize(Serializers serializers, Todo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'todoId',
      serializers.serialize(object.todoId, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'isCompleted',
      serializers.serialize(object.isCompleted,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Todo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TodoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'todoId':
          result.todoId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isCompleted':
          result.isCompleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Todo extends Todo {
  @override
  final int todoId;
  @override
  final String title;
  @override
  final bool isCompleted;

  factory _$Todo([void Function(TodoBuilder) updates]) =>
      (new TodoBuilder()..update(updates)).build();

  _$Todo._({this.todoId, this.title, this.isCompleted}) : super._() {
    BuiltValueNullFieldError.checkNotNull(todoId, 'Todo', 'todoId');
    BuiltValueNullFieldError.checkNotNull(title, 'Todo', 'title');
    BuiltValueNullFieldError.checkNotNull(isCompleted, 'Todo', 'isCompleted');
  }

  @override
  Todo rebuild(void Function(TodoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoBuilder toBuilder() => new TodoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Todo &&
        todoId == other.todoId &&
        title == other.title &&
        isCompleted == other.isCompleted;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, todoId.hashCode), title.hashCode), isCompleted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Todo')
          ..add('todoId', todoId)
          ..add('title', title)
          ..add('isCompleted', isCompleted))
        .toString();
  }
}

class TodoBuilder implements Builder<Todo, TodoBuilder> {
  _$Todo _$v;

  int _todoId;
  int get todoId => _$this._todoId;
  set todoId(int todoId) => _$this._todoId = todoId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  bool _isCompleted;
  bool get isCompleted => _$this._isCompleted;
  set isCompleted(bool isCompleted) => _$this._isCompleted = isCompleted;

  TodoBuilder() {
    Todo._initializeBuilder(this);
  }

  TodoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todoId = $v.todoId;
      _title = $v.title;
      _isCompleted = $v.isCompleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Todo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Todo;
  }

  @override
  void update(void Function(TodoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Todo build() {
    final _$result = _$v ??
        new _$Todo._(
            todoId:
                BuiltValueNullFieldError.checkNotNull(todoId, 'Todo', 'todoId'),
            title:
                BuiltValueNullFieldError.checkNotNull(title, 'Todo', 'title'),
            isCompleted: BuiltValueNullFieldError.checkNotNull(
                isCompleted, 'Todo', 'isCompleted'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
